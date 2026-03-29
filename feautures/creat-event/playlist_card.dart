import 'package:flutter/material.dart';
import 'package:responsive/Feautured/creat_event/CustomRectTween%20.dart';
import 'package:responsive/Feautured/creat_event/Screens/detail_screen.dart';

class PlaylistCard extends StatelessWidget {
  final String imagePath;
  final String title;

  PlaylistCard({
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child:  Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                child: Hero(
                    tag: imagePath,
                transitionOnUserGestures: true,
               createRectTween: (begin, end) {
          return CustomRectTween(begin: begin, end: end);
        },
                  child: Image.asset(
                      imagePath,
                      height: 70,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}