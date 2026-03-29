import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive/Feautured/Cart/Screens/cart.dart';
import 'package:responsive/Feautured/Home_page/Screens/HomePage.dart';
import 'package:responsive/Feautured/creat_event/Screens/select_services.dart';
import 'package:responsive/cubit/cart/cartcubit.dart';
import 'package:responsive/cubit/many_service/service_cubit.dart';


class BlurButton extends StatefulWidget {
  final String title;

  const BlurButton({super.key, required this.title});
  @override
  _BlurButtonState createState() => _BlurButtonState();
}

class _BlurButtonState extends State<BlurButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         
        // ignore: await_only_futures
         context.read<CartCubit>().getMyCart();
        
        
        
        
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Cart(),
          ),
        );
      },
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.grey.withOpacity(0.1),
              child: Center(
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: _isPressed ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
