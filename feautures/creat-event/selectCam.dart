import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:responsive/Feautured/creat_event/Screens/select_catigory.dart';
import 'package:responsive/Feautured/creat_event/Screens/select_services.dart';
import 'package:responsive/Feautured/creat_event/Widgets/catgoryes_grid.dart';
import 'package:responsive/Feautured/creat_event/Widgets/image.dart';
import 'package:responsive/cubit/creat/creat_cubit.dart';
   

   List<Map> Camira = [
  {'name': 'with photography', 'iconPath': 'lib/images/With_photografer.png'},
  {'name': 'without photography', 'iconPath': 'lib/images/Without_photografer.jfif'},
  
];

class SelectCam extends StatelessWidget {
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
                          builder: (context) =>SelectCatigory() ,
                        ),
                      );
                  },
                   child: Icon(Icons.arrow_back)),
                  Text('choose now', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  GestureDetector(onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>SelectService() ,
                        ),
                      );
                  },
                   child: Icon(Icons.arrow_forward)),
                ],
              ),
            ),
             Expanded(child: Container(
              padding: EdgeInsets.symmetric(vertical: 35),
               child: Center(
                child: Column(children: [
                  Imagee(name: Camira[0]['name'], icon: Camira[0]['iconPath'], onTap: ()async { await context.read<createCubit>().select_camira(Camira[0]['name']); }, ),
                   SizedBox(height: 80,),
                  Imagee(name: Camira[1]['name'], icon: Camira[1]['iconPath'], onTap: () async{ await context.read<createCubit>().select_camira(Camira[1]['name']);}, ),
                ]),
               ),
             ))
          ],
        ),
      ),
    );
  }
}
