import 'package:flutter/material.dart';

class Time_Picker extends StatefulWidget {
  final String text1;
  final double width1;
  const Time_Picker({super.key, required this.text1, required this.width1});

  @override
  State<Time_Picker> createState() =>
      _Time_PickerState(text: text1, width: width1);
}

class _Time_PickerState extends State<Time_Picker> {
  final String text;
  final double width;
  TimeOfDay time = TimeOfDay.now();

  _Time_PickerState({required this.text, required this.width});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
          height: 70,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
              border: Border.all(width: 2, color: Colors.black)),
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Text(
                text,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Spacer(
                flex: 1,
              ),
              GestureDetector(
                onTap: () async {
                  TimeOfDay? newtime =
                      await showTimePicker(context: context, initialTime: time);

                  if (newtime == null) return;
                  setState(() {
                    time = newtime;
                  });
                },
                child: Text(
                  '${time.hour}:${time.minute}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )),
    );
  }
}
