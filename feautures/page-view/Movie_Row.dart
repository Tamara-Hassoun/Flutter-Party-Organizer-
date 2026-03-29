import 'package:flutter/material.dart';

class MovieRow extends StatelessWidget {
  final ScrollController scrollController;
  final List images;
  const MovieRow(
      {super.key, required this.images, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          controller: scrollController,
          shrinkWrap: true,
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    "${images[index]}",
                    width: 200,
                    fit: BoxFit.cover,
                  )),
            );
          }),
    );
  }
}
