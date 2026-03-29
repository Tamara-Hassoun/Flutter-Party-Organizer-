import 'package:flutter/material.dart';

class BuyTicket extends StatelessWidget {
  const BuyTicket({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 22, right: 140),
          child: Text(
            r"3000 $",
            style: TextStyle(color: Colors.green, fontSize: 22),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            child: const Text(
              "Buy ticket",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
          ),
        )
      ],
    );
  }
}
