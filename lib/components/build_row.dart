import 'package:flutter/material.dart';
import 'package:nwsc_notify/components/reusable_card.dart';
import 'package:nwsc_notify/constants.dart';

class Build extends StatelessWidget {
  Build({@required this.text, this.icon, @required this.onTap});

  final String text;
  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableCard(
        onPress: onTap,
        colour: kCardColor,
        cardChild: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 50.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: kCardTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
