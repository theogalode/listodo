import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:listodo/utils/font_awesome_four.dart';
import 'package:listodo/widget/ListodoRoundedButton.dart';
import 'package:listodo/widget/ListodoTextFormField.dart';
import 'package:listodo/utils/listodo_colors.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static final routeName = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final ListodoColors lc = ListodoColors();

  Widget _spanTexts() {
    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 16.0);
    TextStyle linkStyle = TextStyle(color: ListodoColors.listodoSwatch);
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(text: 'Vous n\'avez pas de compte ?'),
          TextSpan(
              text: '\nInscription',
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.of(context).pushNamed(SignUpScreen.routeName);
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
                'Se connecter',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/feuille.png',
                fit: BoxFit.cover,
                width: 168,
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    ListodoTextFormField(
                      labelText: 'Adresse Email',
                      onSaved: (value) {},
                      borderColor: ListodoColors.listodoSwatch,
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListodoTextFormField(
                      labelText: 'Mot de passe',
                      onSaved: (value) {},
                      borderColor: ListodoColors.listodoSwatch,
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
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
                        onPressed: () {
                          Navigator.of(context).pushNamed('/home');
                        },
                        child: Text(
                          'Connexion',
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
