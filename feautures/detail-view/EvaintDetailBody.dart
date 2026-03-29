import 'package:flutter/material.dart';

class EventDetailsBody extends StatelessWidget {
  const EventDetailsBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22), color: Colors.yellow),
        )
      ],
    );
  }
}
