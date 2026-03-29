import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 420 / 215,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                    "images/8.jpg",
                  )),
            ),
            child: Column(
              children: [
                ListTile(
                  // minVerticalPadding: 0,
                  // contentPadding: EdgeInsets.symmetric(horizontal: ),
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  title: Text(
                    "Events Details",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  trailing: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.5),
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.bookmark,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
        )
// EventDetailsBody()
      ],
    );
  }
}
