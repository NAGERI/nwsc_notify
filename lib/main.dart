import 'package:flutter/material.dart';
import 'package:nwsc_notify/screens/home_screen.dart';
import 'package:nwsc_notify/screens/login_screen.dart';
import 'package:nwsc_notify/screens/menu_screen.dart';
import 'package:nwsc_notify/screens/notifications.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NWSC notify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        textTheme: TextTheme(),

        scaffoldBackgroundColor: Color(0xFFF0F4FD),
        primaryColor: Color(0xFF2A7DCD),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        Notifications.id: (context) => Notifications(),
        MenuScreen.id: (context) => MenuScreen()
      },
    );
  }
}
