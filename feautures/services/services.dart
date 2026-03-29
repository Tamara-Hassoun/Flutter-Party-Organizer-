import 'package:flutter/material.dart';
import 'package:responsive/Feautured/Services/Widgets/services_grid.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:  Color.fromARGB(255, 113, 40, 96),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        body: Material(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Text(
                "services",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
              )),
              SizedBox(
                height: 10,
              ),
              ServicesGrid(),
            ],
          ),
        ));
  }
}
