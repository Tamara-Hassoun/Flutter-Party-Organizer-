import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive/Feautured/Cart/Widgets/items_cart.dart';
import 'package:responsive/cubit/cart/cartService.dart';
import 'package:responsive/cubit/cart/cartState.dart';
import 'package:responsive/cubit/cart/cartcubit.dart';


class Cart extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: 
         Column(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("My Cart",style: TextStyle(color: Color.fromARGB(255, 145, 25, 143),fontSize: 26,fontWeight: FontWeight.bold),),
                SizedBox(width: 4,),
                Icon(Icons.shopping_cart_outlined,color:Color.fromARGB(255, 145, 25, 143) ,size: 40,)
              ],
            ),
          ),
           BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is CartLoading) {
            return CircularProgressIndicator();
          } else if (state is CartSucces) {
            return ListView.builder(
              itemCount: state.cartItems.length,
              itemBuilder: (context, index) {
                final item = state.cartItems[index];
                print(state.cartItems);
                return ItemsCart(
                    onPressed1: () {
                      context.read<CartCubit>().deleteEventFromCart(item.eventId ?? 0);
                    }, event: '',
                     place: 'Place: ${item.place }', 
                     music: 'music: ${item.songer }',
                     style: 'style: ${item.dressAndMakeup }',
                     decoration: 'decoration: ${item.decoration }',
                     car: 'car: ${item.car }', 
                     food:'food: ${item.food }',
                     date: 'date: ${item.date.toString() }',
                  
                );
              },
            );
          } else if (state is CartError) {
            return Text(state.message);
            
          }  {
            return Container();
          }
        },
      ),
          
        ],),
      )
    ;
  }
} 