import 'package:flutter/material.dart';
import 'package:nwsc_notify/constants.dart';
import 'package:date_format/date_format.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class HomeScreen extends StatelessWidget {
  static final String id = 'HomeScreen';

  final String contact = '';

  @override
  Widget build(BuildContext context) {
    TextEditingController contactController;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text('Report Field Incident'),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(bottom: 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50.0,
                color: Color(0xFF2A7DCD),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                        'Date : ' +
                            formatDate(DateTime.now(),
                                [yyyy, '-', mm, '-', dd, '  ', HH, ':', nn]),
                        // Text('Date:  ${DateTime.now().toString()}',
                        style: kTextStyle)),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Source of Information',
                      style: kTextStyle.copyWith(color: Colors.black),
                    ),
                    Text('MMS',
                        style: kTextStyle.copyWith(color: Colors.black)),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 300.0,
                child: Divider(
                  color: Colors.blueGrey,
                  thickness: 1.0,
                ),
              ),
              // Text('Thank you for the information'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: FlatButton(
                  color: Color(0xFF2A7DCD),
                  onPressed: () {},
                  child: Text(
                    'Provide data required below..',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Telephone Number :',
                      style: kTextStyle.copyWith(color: Colors.black)),
                  Flexible(
                    child: TextField(
                      controller: contactController,
                      onChanged: (value) {
                        //Do something with the user input.
                        // contact = value;
                        contactController.clear();
                      },
                      decoration: kTextInputDecoration,
                      keyboardType: TextInputType.phone,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Flexible(
                child: TextField(
                  controller: contactController,
                  onChanged: (value) {
                    //Do something with the user input.
                    // contact = value;
                    contactController.clear();
                  },
                  maxLength: 100,
                  decoration: kTextInputDecoration.copyWith(
                      hintText: 'Give clear description'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      // decoration: BoxDecoration(),
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            child: Icon(Icons.camera_alt),
                            onTap: () => camera,
                          ),
                          Text('Take a picture of Incident'),
                        ],
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 50.0),
                child: FlatButton(
                  onPressed: () {},
                  color: Color(0xFF2A7DCD),
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Camera extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Camera> {
// void camera() {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    // setState(() {
    _image = image;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: _image == null ? Text('No image selected.') : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}

Widget camera() {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    // setState(() {
    _image = image;
    // });
  }

  // @override
  // Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: _image == null ? Text('No image selected.') : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  
