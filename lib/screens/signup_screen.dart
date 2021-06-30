import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:listodo/utils/font_awesome_four.dart';
import 'package:listodo/utils/listodo_colors.dart';
import 'package:listodo/widget/ListodoRoundedButton.dart';
import 'package:listodo/widget/ListodoTextFormField.dart';

class SignUpScreen extends StatefulWidget {
  static final routeName = '/signup';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Widget _spanTexts() {
    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 16.0);
    TextStyle linkStyle = TextStyle(color: ListodoColors.listodoSwatch);
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(text: 'Vous êtes déjà inscrit ?'),
          TextSpan(
              text: '\nSe connecter',
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.of(context).pop();
                }),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ListodoColors.listodoLightBlue,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 50,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
                width: 248,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'S\'inscrire',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    ListodoTextFormField(
                      onSaved: (value) {},
                      borderColor: ListodoColors.listodoSwatch,
                      labelText: 'Nom',
                      obscureText: false,
                    ),
                    SizedBox(height: 20),
                    ListodoTextFormField(
                      onSaved: (value) {},
                      borderColor: ListodoColors.listodoSwatch,
                      labelText: 'Prénom',
                      obscureText: false,
                    ),
                    SizedBox(height: 20),
                    ListodoTextFormField(
                      onSaved: (value) {},
                      borderColor: ListodoColors.listodoSwatch,
                      labelText: 'Adresse email',
                      obscureText: false,
                    ),
                    SizedBox(height: 20),
                    ListodoTextFormField(
                      onSaved: (value) {},
                      borderColor: ListodoColors.listodoSwatch,
                      labelText: 'Mot de passe',
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    ListodoTextFormField(
                      onSaved: (value) {},
                      borderColor: ListodoColors.listodoSwatch,
                      labelText: 'Confirmez le mot de passe',
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListodoRoundedButton(
                          icon: FontAwesomeFour.google,
                          backgroundColor: Colors.white,
                          iconColor: ListodoColors.listodoSwatch,
                          width: 50,
                          height: 50,
                          onPressed: () {},
                          iconSize: 20,
                          shadow: true,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ListodoRoundedButton(
                          icon: FontAwesomeFour.facebook,
                          backgroundColor: Colors.white,
                          iconColor: ListodoColors.listodoSwatch,
                          width: 50,
                          height: 50,
                          onPressed: () {},
                          iconSize: 20,
                          shadow: true,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Inscription',
                          style: TextStyle(fontSize: 22),
                        ),
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    _spanTexts()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
