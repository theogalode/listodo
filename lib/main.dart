import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listodo/screens/tabs_screen.dart';
import 'screens/login_screen.dart';
import 'package:listodo/utils/listodo_colors.dart';
import 'screens/signup_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  final ListodoColors lc = ListodoColors();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listodo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: ListodoColors.listodoSwatch,
        canvasColor: ListodoColors.listodoLightBlue,
        fontFamily: 'Nunito',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
        inputDecorationTheme: InputDecorationTheme(fillColor: Colors.white),
      ),
      home: LoginScreen(),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SignUpScreen.routeName: (ctx) => SignUpScreen(),
        TabsScreen.routeName: (ctx) => TabsScreen(),
      },
    );
  }
}
