import 'package:flutter/material.dart';

class visitorsBody extends StatelessWidget {
  const visitorsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white.withOpacity(.99)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 35,
          ),
          Transform.translate(
            offset: Offset(-35, 0),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('images/1.jpg'),
            ),
          ),
          Transform.translate(
            offset: Offset(-55, 0),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('images/2.jpg'),
            ),
          ),
          Transform.translate(
            offset: Offset(-75, 0),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('images/3.jpg'),
            ),
          ),
          Text(
            "+20 Going ",
            style: TextStyle(color: Colors.blue..shade900),
          )
        ],
      ),
    );
  }
}
