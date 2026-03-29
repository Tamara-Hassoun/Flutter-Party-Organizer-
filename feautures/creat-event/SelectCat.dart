import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:responsive/Feautured/creat_event/Screens/select_camira.dart';
import 'package:responsive/Feautured/creat_event/Screens/select_type.dart';
import 'package:responsive/Feautured/creat_event/Widgets/catgoryes_grid.dart';


class SelectCat extends StatefulWidget {
  @override
  State<SelectCat> createState() => _SelectCatState();
}

class _SelectCatState extends State<SelectCat> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GlassmorphicContainer(
        width: double.infinity,
        height: 650,
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
            Colors.white.withOpacity(0.5),
            Colors.white.withOpacity(0.5),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>SelectType() ,
                        ),
                      );
                  },
                   child: Icon(Icons.arrow_back)),
                  Text('choose now', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  GestureDetector(onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>SelectCamira() ,
                        ),
                      );
                  },
                   child: Icon(Icons.arrow_forward)),
                ],
              ),
            ),
             Expanded(child: CategoriesGrid())
          ],
        ),
      ),
    );
  }
}
