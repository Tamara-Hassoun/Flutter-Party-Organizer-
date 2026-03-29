import 'package:flutter/material.dart';
import 'package:responsive/Feautured/Drawer/Widget/Column_ListTile.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, left: 15, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  "images/1.jpg",
                ),
                radius: 40,
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Ghaith Baghjaty",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 35,
              ),
              ColumnListTile()
            ],
          ),
        )
      ],
    );
  }
}
