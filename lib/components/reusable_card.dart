import 'package:flutter/material.dart';

// The card is also able to detect gestures i.e. onTap
class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour, this.cardChild, this.onPress});
  final Color colour; // final refers that this prop will not be changed
  final Widget cardChild;
  final Function
      onPress; // (helps specify a function to be called when gesture is pressed)
  // functions as first order objects passing them as if int and objects.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        height: 100.0,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
