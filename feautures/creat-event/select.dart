import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:responsive/Feautured/Cart/Screens/cart.dart';
import 'package:responsive/Feautured/creat_event/Screens/select_camira.dart';
import 'package:responsive/Feautured/creat_event/Widgets/grid-services.dart';
import 'package:responsive/cubit/cart/cartcubit.dart';
import 'package:responsive/cubit/creat/creat_cubit.dart';
import 'package:responsive/cubit/creat/creat_state.dart';

class Select extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<createCubit, createState>(
      listener: (context, state) async{
        if (state is CreateSucces) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("succes")));
              
              } 
              
              else if (state is CreateFalure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.Message)));
        }
      },
      builder: (context, state) {
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
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SelectCamira(),
                              ),
                            );
                          },
                          child: Icon(Icons.arrow_back)),
                      Text('choose now',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      GestureDetector(
                          onTap: ()async {
                             await context.read<createCubit>().Creat();
                             context.read<CartCubit>().getMyCart1();
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Cart(),
                              ),
                            );
                          },
                          child: Icon(Icons.add_shopping_cart_rounded)),
                    ],
                  ),
                ),
                Expanded(child: GridServices())
              ],
            ),
          ),
        );
      },
    );
  }
}
