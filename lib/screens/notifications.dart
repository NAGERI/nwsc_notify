import 'package:date_format/date_format.dart';
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.water_damage_sharp),
                title: Text(
                  "Level taken on:  " +
                      formatDate(DateTime.now(),
                          [yyyy, '-', mm, '-', dd, ' Time:', HH, ':', nn]),
                ),
                trailing: Text("70%"),
              )),
          Card(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.access_time),
                title: Text("Current Level"),
                trailing: Text("50%"),
              )),
          Card(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.access_time),
                title: Text("Current Level"),
                trailing: Text("20%"),
              ))
        ],
      )),
    );
  }
}
