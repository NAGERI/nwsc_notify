import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  Notifications({Key key}) : super(key: key);
  static final String id = "Notification";

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ListTile(
            title: Text("Current Level"),
            trailing: Text("20%"),
          ),
          ListTile(
            title: Text("Current Level"),
            trailing: Text("50%"),
          ),
          ListTile(
            title: Text("Current Level"),
            trailing: Text("70%"),
          )
        ],
      )),
    );
  }
}
