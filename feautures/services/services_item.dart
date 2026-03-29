import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class ServicesItem extends StatelessWidget {
  final String name;
  final String icon;
  const ServicesItem({super.key,required this.name,required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 400,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Color.fromARGB(255, 145, 143, 145)),
        ),
        child: Column(
          children: [
            Container(
             decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
              color:  Colors.white,), 
             height: 110,
             width: double.maxFinite,
             child: Center(child: Lottie.asset(icon)), 
            ),
            SizedBox(height: 20,),
            Material(
              child: Center(
                child: Text(name,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
