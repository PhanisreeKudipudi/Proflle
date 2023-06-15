import 'package:flutter/material.dart';
class address extends StatelessWidget{
  const address({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 10, right: 275),
          child: Text('ADDRESS', style: TextStyle(fontSize: 20,)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18,right: 18,top: 5),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: const Color(0xffB4B4B4).withOpacity(0.4),
              borderRadius: BorderRadius.circular(16),
            ),
            //padding: EdgeInsets.all(10),
            child: const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Permenent'),
                ),
              ),
            ),

          ),
        ),
      ],
    );
        }

}