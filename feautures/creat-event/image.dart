import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:responsive/Feautured/creat_event/Screens/details_type.dart';

class Imagee extends StatelessWidget {
   final String name;
  final String icon;
   final void Function()? onTap ;
  const Imagee({super.key,required this.name,required this.icon,required this.onTap, });

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(name),
          SizedBox(height: 5,),
          GestureDetector(
            onTap: onTap,
            child: GlassmorphicContainer(
                width: 120,
                height: 120,
                borderRadius: 20,
                blur: 20,
                alignment: Alignment.bottomCenter,
                border: 0.5,
                linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.white.withOpacity(0.2),
                  ],
                  stops: [0.1, 1],
                ),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.0),
                    Colors.white.withOpacity(0.0),
                  ],
                ),
                child:Center(child: Image.asset(icon,height: 90,width: 90,fit: BoxFit.cover,))),
          ),
        ],
      ),
    );
  }
}