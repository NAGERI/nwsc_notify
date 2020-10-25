import 'package:flutter/material.dart';

import 'package:nwsc_notify/constants.dart';
import 'package:nwsc_notify/components/build_row.dart';
import 'package:nwsc_notify/screens/notifications.dart';

class MenuScreen extends StatelessWidget {
  static String id = 'menuscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'nwsc menu',
          style: kTitleTextStyle,
        ),
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        iconTheme: IconThemeData(color: Colors.white, size: 20.0),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              semanticLabel: 'settings',
            ),
          )
        ],
      ),
      drawer: Drawer(
        elevation: 10.0,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Options'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                Build(
                  text: 'HOME',
                  icon: Icons.pets,
                  onTap: () {},
                ),
                Build(
                    text: 'TRANSACTIONS',
                    icon: Icons.merge_type,
                    onTap: () {
                      // Navigator.pushNamed(context, MattingScreen.id);
                    }),
                Build(
                    text: 'COMPANY PROFILE',
                    icon: Icons.bookmark,
                    onTap: () {
                      // Navigator.pushNamed(context, LittersScreen.id);
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Build(
                    text: 'NOTIFICATIONS',
                    icon: Icons.notifications_active,
                    onTap: () {
                      Navigator.pushNamed(context, Notifications.id);
                    }),
                Build(
                    text: 'SOCIAL MEDIA',
                    icon: Icons.face,
                    onTap: () {
                      // Navigator.pushNamed(context, MedicationScreen.id);
                    }),
                Build(
                    text: 'REPORT LEAKAGE',
                    icon: Icons.report,
                    onTap: () {
                      // Navigator.pushNamed(context, IncomeScreen.id);
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Build(
                    text: 'GENERAL FEEDBACK',
                    icon: Icons.folder_open,
                    onTap: () {
                      // Navigator.pushNamed(context, TasksScreen.id);
                    }),
                Build(
                    text: 'MAKE PAYMENT',
                    icon: Icons.attach_money,
                    onTap: () {
                      // Navigator.pushNamed(context, FeedsScreen.id);
                    }),
                Build(
                    text: 'SETTINGS',
                    icon: Icons.build,
                    onTap: () {
                      // Navigator.pushNamed(context, ReportsScreen.id);
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
