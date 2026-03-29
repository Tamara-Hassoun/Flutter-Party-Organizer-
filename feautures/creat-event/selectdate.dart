import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:responsive/Feautured/creat_event/Screens/select_type.dart';
import 'package:responsive/Feautured/creat_event/Widgets/catgoryes_grid.dart';
import 'package:responsive/Feautured/creat_event/Widgets/image.dart';
import 'package:responsive/cubit/creat/creat_cubit.dart';
  

class SelectDatee extends StatefulWidget {
  @override
  State<SelectDatee> createState() => _SelectDateeState();
}

class _SelectDateeState extends State<SelectDatee> {
  DateTime date = DateTime.now();
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
                   Icon(Icons.dataset),
                  Text('choose now', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                   GestureDetector(onTap: (){
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>SelectType() ,
                        ),
                      );
                  },
                   child: Icon(Icons.arrow_forward)),
                  
                ],
              ),
            ),
             Expanded(child: Center(
              child:
                Column(
                  children: [
                    SizedBox(height: 150,),
                    Imagee(name:"select party date" , icon: "lib/images/date.jfif", onTap:() async {
                    DateTime? newDate = await showDatePicker(
                        context: context,
                        initialDate: date,
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2100));
                                 
                   if (newDate == null) return;


else {
  setState(() {
    date = newDate;
     
  });
  
  
  await context.read<createCubit>().select_date(date);
}

                    
                                  },),
                  ],
                ),
                
             ))
          ],
        ),
      ),
    );
  }
}
