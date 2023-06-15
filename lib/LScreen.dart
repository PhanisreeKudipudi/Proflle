import 'package:flutter/material.dart';
import 'package:http/Skills.dart';
import 'package:http/address.dart';
import 'package:http/mobNo.dart';
import 'package:http/name.dart';
import 'package:http/suBmit.dart';
import './datePicker.dart';
import './Dropdown.dart';

class LScreen extends StatefulWidget {
  const LScreen({super.key});

  //TextEditingController emailController= TextEditingController();
  @override
  State<LScreen> createState() => _LScreenState();
}

class _LScreenState extends State<LScreen> {
  get emailController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/SigninGreen.jpeg'),
          fit: BoxFit.cover,
        )
      ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 35,
              ),
              Container(
                child: const Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/user1.jpeg'),
                    radius: 75,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                //padding: EdgeInsets.only(top: 10, right: 100),
                child: const Text(
                  'PROFILE DETAILS',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 288),
                child: Container(
                  child: Text('PROFILE', style: TextStyle(fontSize: 20)),
                ),
              ),
             name(),
              mobNo(),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 1,
                  left: 18,
                  right: 18,
                ),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xffB4B4B4).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  //padding: EdgeInsets.all(10),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'xxx@gmail.com'),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5,left: 18,right: 20),
                child: datePicker(),
              ),
              Padding(
                padding: const EdgeInsets.only(top:6,right:182),
                child: Container(
                  child: const Text(
                    'Experience in Years',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5,left: 20,right: 20),
                child: Dropdown(),
              ),
              const address(),
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
                            border: InputBorder.none, hintText: 'Residental'),
                      ),
                    ),
                  ),
                ),
              ),

              const Skills(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: suBmit(),
              ),
              const SizedBox(height: 200,)
          ],
          ),
        ),)

          );

  }
}

