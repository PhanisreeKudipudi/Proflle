import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class datePicker extends StatefulWidget {
  const datePicker({Key? key}) : super(key: key);

  @override
  State<datePicker> createState() => _datePickerState();
}

class _datePickerState extends State<datePicker> {
  DateTime currentDate = DateTime.now();
  String? selectedDateForBackendDeveloper;
  datePicker(context)async{
    DateTime? userSelectedDate=
    await showDatePicker(context: context,
        initialDate:currentDate, firstDate: DateTime(2001), lastDate: DateTime(2023,9,20));
    if(userSelectedDate==null){
      return;
    }else{
      setState(() {
        currentDate=userSelectedDate;
        selectedDateForBackendDeveloper="${currentDate.year}/${currentDate.month}/${currentDate.day}";
        if (kDebugMode) {
          print("Date $selectedDateForBackendDeveloper");
        }
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [

          ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
              onPressed: (){
            datePicker(context);
          }, child: const Text('select DOB')),
          const SizedBox(
            width: 12,
          ),Text("Selected Date:${currentDate.year}/${currentDate.month}/${currentDate.day}",
            style: const TextStyle(fontSize: 15),
            textAlign: TextAlign.center,
          ),

        ],
      );
  }
}
