import 'package:flutter/material.dart';

class CurvedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomShapeClipper(),
      child: Container(
        width: double.infinity,
        height: 40,
        color: Colors.blue,
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final curveHeight = 500.0;

    path.lineTo(0, size.height - curveHeight);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - curveHeight);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
