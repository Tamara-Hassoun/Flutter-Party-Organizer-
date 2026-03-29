import 'package:flutter/material.dart';
import 'package:responsive/Feautured/creat_event/Widgets/selctTypee.dart';
import 'package:responsive/Feautured/creat_event/Widgets/select.dart';
import 'package:responsive/Feautured/creat_event/Widgets/selectCam.dart';



class SelectCamira extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFBBC3D9),
      body: SafeArea(
        child: Column(
          children: [
            SelectCam(),
            
          ],
        ),
      ),
    );
  }
}

