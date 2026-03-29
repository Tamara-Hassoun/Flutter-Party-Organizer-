import 'package:flutter/material.dart';

class Hoomepage extends StatefulWidget {
  const Hoomepage(
      {super.key, required this.onTap, required this.animationController});
  final VoidCallback onTap;
  final AnimationController animationController;

  @override
  State<Hoomepage> createState() => _HoomepageState();
}

class _HoomepageState extends State<Hoomepage> {
  @override
  void dispose() {
    widget.animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(onPressed: widget.onTap, icon: Icon(Icons.menu))),
    );
  }
}
