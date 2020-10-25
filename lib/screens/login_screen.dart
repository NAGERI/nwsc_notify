import 'package:nwsc_notify/components/rounded_button.dart';
import 'package:nwsc_notify/components/usable_api.dart';
import 'package:nwsc_notify/constants.dart';
import 'package:flutter/material.dart';

import 'package:nwsc_notify/screens/menu_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // String email;
  // String password;
  // bool showSpinner = false;
  // final _auth = FirebaseAuth.instance;
  // FirebaseUser registerdUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Flexible(
            //   child: Hero(
            //     tag: 'logo',
            //     child: _widgetOptions.elementAt(_selectedIndex),
            //     // Container(
            //     //   height: 100.0,
            //     // child: Image.asset('images/logo.png'),
            //     // ),
            //   ),
            // ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
                // email = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter username',
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
                // password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter Password',
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              color: Color(0xFF2A7DCD),
              text: 'Log In',
              onPressed: () async {
                apiMethod();
                setState(() {
                  // showSpinner = true;
                  Navigator.pushReplacementNamed(context, MenuScreen.id);
                  // Get.offNamed(MenuScreen.id);  // from get package
                });
                // try {
                //   final user = await _auth.signInWithEmailAndPassword(
                //       email: email, password: password);
                //   if (user != null) {
                //     Navigator.pushNamed(context, ChatScreen.id);
                //   }
                //   setState(() {
                //     showSpinner = false;
                //   });
                // } catch (e) {
                //   print(e);
                // }
              },
            ),
          ],
        ),
      ),
    );
  }
}
