import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import '../pages/register_page.dart';
import '../pages/welcome_page.dart';
import '../constants.dart';
import '../views/inputs.dart';
import '../views/buttons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _keyboardVisible = false;
  double _offsetHeight = 240;
  @override
  void initState() {
    super.initState();

    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        setState(() {
          _keyboardVisible = visible;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _offsetHeight = _keyboardVisible ? 60 : 240;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          AnimatedContainer(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
              milliseconds: 1250,
            ),
            color: kSecondaryColor,
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    margin: const EdgeInsets.only(top: 100),
                    child: Column(
                      children: [
                        Container(
                            child: Text(
                                "Maisha Connections",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                               ),
                              ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16, bottom: 32),
                          child: Text(
                            'The best place to be is the place where you feel free to air your opinions and engage freely!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
          AnimatedContainer(
            height: MediaQuery.of(context).size.height - _offsetHeight,
            transform: Matrix4.translationValues(0, _offsetHeight, 1),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24)
              ),
            ),
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
              milliseconds: 1250,
            ),
            child: Center(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(
                          'Login To Continue',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor
                          )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Column(
                          children: [
                            InputWitIcon(Icons.email, "Email Address"),
                            SizedBox(height: 10),
                            InputWitIcon(Icons.vpn_key, "Password"),
                            SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => WelcomePage())
                                );
                              },
                              child: PrimaryBtn("Login"),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: kFaintColor
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => RegisterPage())
                                );
                              },
                              child: OutlinedBtn("Create Account")
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          )
        ],
      )
    );
  }
}