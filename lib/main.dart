// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 186, 143, 194),
    appBar: AppBar(
      title: Text('Images Similer'),
      backgroundColor: Color.fromARGB(255, 99, 78, 135),
    ),
      body: ImagePage(),
    ),
  ),);
}
class ImagePage extends StatefulWidget {

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
   int leftImageNumber = 1;
   int rightImageNumber = 2;

   // ignore: non_constant_identifier_names
   void RandomImages(){
        leftImageNumber=Random().nextInt(8)+1;
        rightImageNumber=Random().nextInt(8)+1;
   }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber ?
          'cogratulations' : 
          'Try again please',
        style: TextStyle(
          fontSize: 38.0,
          color: Colors.white,
        ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
           // ignore: prefer_const_literals_to_create_immutables
           children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    RandomImages();

                  });
                 },
                child: Image.asset('images/image-$leftImageNumber.png'),
              ),
            ),
             Expanded(
              child: TextButton(
                onPressed: () { 
                  setState(() {
                    RandomImages();

                  });
                 },
                child: Image.asset('images/image-$rightImageNumber.png'),
              ),
            ),
           ], 
          ),
        ),
      ],
    );
  }
  
 
}


