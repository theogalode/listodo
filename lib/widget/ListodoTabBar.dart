import 'package:flutter/material.dart';
import 'package:listodo/utils/listodo_colors.dart';
import 'package:listodo/utils/project_properties.dart';

class ListodoTabBar extends StatefulWidget {
  final List<Widget> items;

  ListodoTabBar({this.items});

  @override
  _ListodoTabBarState createState() => _ListodoTabBarState();
}

class _ListodoTabBarState extends State<ListodoTabBar> {
  int _selectedPage = 0;
  PageController _pageController = PageController();

  void _changePage(int pageNum) {
    setState(() {
      _selectedPage = pageNum;
      _pageController.animateToPage(
        pageNum,
        duration: Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    });
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 350,
            height: 40,
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [ProjectProperties.boxShadow1]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListodoTabButton(
                  label: 'Recettes',
                  pageNumber: 0,
                  selectedPage: _selectedPage,
                  onPressed: () {
                    _changePage(0);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                ListodoTabButton(
                  label: 'Listes',
                  pageNumber: 1,
                  selectedPage: _selectedPage,
                  onPressed: () {
                    _changePage(1);
                  },
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 330,
            child: PageView(
              onPageChanged: (int page) {
                setState(() {
                  _selectedPage = page;
                });
              },
              controller: _pageController,
              children: widget.items,
            ),
          )
        ],
      ),
    );
  }
}

class ListodoTabButton extends StatelessWidget {
  final String label;
  final int selectedPage;
  final int pageNumber;
  final void Function() onPressed;

  ListodoTabButton({
    @required this.label,
    @required this.selectedPage,
    @required this.pageNumber,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 170,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: selectedPage == pageNumber
                ? ListodoColors.listodoSwatch
                : Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              selectedPage == pageNumber
                  ? ProjectProperties.boxShadow1
                  : ProjectProperties.noShadow,
            ]),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: selectedPage == pageNumber
                ? Colors.white
                : ListodoColors.listodoSwatch,
          ),
        ),
      ),
    );
  }
}
