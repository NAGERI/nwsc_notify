import 'package:flutter/material.dart';

const kTextInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter telephone number',
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide.none),
);
// Color(0xFFe0f2f1);
const kCardColor = Colors.lightBlueAccent;

const kCardTextStyle = TextStyle(
  color: Colors.black87,
  fontSize: 7.0,
  wordSpacing: -2.0,
  fontWeight: FontWeight.bold,
);
const kTitleTextStyle = TextStyle(
  // fontFamily: 'RalewayMedium',
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);
const kTextStyle = TextStyle(
    color: Colors.yellow, fontSize: 20.0, fontWeight: FontWeight.w500);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
