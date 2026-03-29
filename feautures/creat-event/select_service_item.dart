import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive/Feautured/creat_event/Widgets/type_grid.dart';
import 'package:responsive/cubit/many_service/service_cubit.dart';
import 'package:responsive/models/many_service_modle.dart';

class SelectServiceItem extends StatelessWidget {
  final String name;
  final String image;
  final Color color;
  
  SelectServiceItem(
      {super.key,
      required this.name,
      required this.image,
      required this.color,
      });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServiceCubit, ServiceState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Container(
          height: double.infinity,
          width: double.infinity,
          color: color,
          child: Column(children: [
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  thickness: 3,
                  color: Colors.white,
                )),
            Container(
              child: Row(
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 3,
                    color: Colors.white,
                  )),
                  Material(
                    color: Colors.transparent,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            TypeGrid()
          ]),
        );
      },
    );
  }
}
