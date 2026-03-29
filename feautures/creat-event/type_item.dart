import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive/cubit/many_service/service_cubit.dart';

class TypeItem extends StatelessWidget {
  TypeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
          child: Container(
            height: 100,
            color: Colors.transparent,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("lib/images/restaurants.png"),
                  radius: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                Material(
                    color: Colors.transparent,
                    child: Text(
                      "restaurant",
                    ))
              ],
            ),
          ),
        );
    
  }
}
