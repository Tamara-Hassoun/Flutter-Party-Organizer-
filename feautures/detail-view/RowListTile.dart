import 'package:flutter/material.dart';

class RowListTile extends StatelessWidget {
  const RowListTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.subtitle});
  final String title;
  final IconData icon;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.blue.shade900,
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.black.withOpacity(.5)),
            ),
          ],
        )
      ],
    );
  }
}
