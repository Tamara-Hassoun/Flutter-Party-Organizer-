import 'package:flutter/material.dart';
import 'package:responsive/Feautured/Drawer/Screen/HomePage.dart';
import 'package:responsive/Feautured/Drawer/Widget/DrawerBody.dart';

class Drawer1 extends StatefulWidget {
  const Drawer1({super.key});

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> with TickerProviderStateMixin {
  late AnimationController animationController;
  void _toggle() => animationController.isCompleted
      ? animationController.reverse()
      : animationController.forward();
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, Widget? _) {
          var scale = 1 - (animationController.value * 0.3);
          var maxSide = MediaQuery.of(context).size.width;
          var side = (maxSide * (animationController.value * 0.6));
          return Stack(
            children: [
              Material(
                color: Colors.deepPurple,
                child: SafeArea(
                    child: Theme(
                        data: ThemeData(brightness: Brightness.dark),
                        child: const SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: DrawerBody(),
                        ))),
              ),
              Transform(
                transform: Matrix4.identity()
                  ..translate(side)
                  ..scale(scale),
                alignment: Alignment.centerLeft,
                child: Hoomepage(
                  onTap: _toggle,
                  animationController: animationController,
                ),
              )
            ],
          );
        });
  }
}
