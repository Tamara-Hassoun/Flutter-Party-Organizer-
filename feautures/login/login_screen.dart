import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive/Feautured/login/widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          // Background image or content
          Container(
            constraints: const BoxConstraints.expand(),
            child: Image.asset(
              "lib/images/La Jolla Wedding from Alchemy Fine Events + Samuel Lippke Photography.jpeg",
              fit: BoxFit.cover,
            ),
          ),

          // Blur filter
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
          const loginBody()
        ],
      )),
    );
  }
}
