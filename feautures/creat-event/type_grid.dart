import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive/Feautured/creat_event/Widgets/type_item.dart';
import 'package:responsive/cubit/many_service/service_cubit.dart';

class TypeGrid extends StatelessWidget {

  const TypeGrid({super.key});
// final List cartegoris  


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServiceCubit, ServiceState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        return Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: GridView.builder(
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 0.99),
                itemBuilder: (context, index) {
                  return TypeItem();
                }),
          ),
        );
      },
    );
  }
}
