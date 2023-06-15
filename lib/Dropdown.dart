import 'package:flutter/material.dart';
class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  _DropdownState(){
    _selectedval=_poductSizeList[0];
  }

  final List _poductSizeList=['SELECT','0-1','1-5','5 Above',];

  String? _selectedval="";

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(value: _selectedval,
          items: _poductSizeList.map(
                  (e){
                return DropdownMenuItem(value: e,child: Text(e),);
              }
          ).toList(),
          onChanged: (val){
            setState(() {
              _selectedval=val as String;
            });
          },
        );

  }
}