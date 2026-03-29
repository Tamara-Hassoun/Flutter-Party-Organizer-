import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String imagePath;
  final String albumTitle;


  ServiceCard({
    required this.imagePath,
    required this.albumTitle,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
            width: 300,
            height: 600,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                )),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(.1),
                    Colors.black.withOpacity(.4),
                  ], begin: Alignment.topRight)),
              child: Container(
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: SizedBox()),
                      Text(
                         albumTitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      
                    ]),
              ),
            ),
          ))
    ;
  }
}


