import 'package:flutter/material.dart';

class Date_Picker extends StatefulWidget {
  const Date_Picker({super.key});

  @override
  State<Date_Picker> createState() => _Date_PickerState();
}

class _Date_PickerState extends State<Date_Picker> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
          height: 70,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
              border: Border.all(width: 2, color: Colors.black)),
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Text("Date:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              Spacer(flex: 1,),
              GestureDetector(
                onTap: () async {
                  DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: date,
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2100));

                  if (newDate == null) return;
                  setState(() {
                    date = newDate;
                  });
                },
                child:  Text('${date.day}/${date.month}/${date.year}',style: TextStyle(color: Colors.white),),
              ),
              
            ],
          )),
    );
  }
}
