import 'package:flutter/material.dart';
class suBmit extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black),
        onPressed: () {
        },
        child: Text(
          'Save',
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
    );

  }
}