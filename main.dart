import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive/Feautured/Cart/Screens/cart.dart';
import 'package:responsive/Feautured/creat_event/Screens/select_date.dart';
import 'package:responsive/Feautured/creat_event/Screens/select_type.dart';
import 'package:responsive/Feautured/creat_event/Widgets/selectdate.dart';
import 'package:responsive/Feautured/login/Screen/login_screen.dart';
import 'package:responsive/Feautured/pageView/Screen/onBoardingScreen.dart';
import 'package:responsive/core/Api/Dio_consumer.dart';
import 'package:responsive/cubit/cart/cartService.dart';
import 'package:responsive/cubit/cart/cartcubit.dart';
import 'package:responsive/cubit/creat/creat_cubit.dart';
import 'package:responsive/cubit/homePage/home_page_cubit.dart';
import 'package:responsive/cubit/many_service/service_cubit.dart';

void main() {
  final cartService = CartService(DioConsumer(dio: Dio()));
  WidgetsFlutterBinding.ensureInitialized();

  runApp( MyApp());
}

class MyApp extends StatelessWidget {

   MyApp({super.key,});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ServiceCubit(DioConsumer(dio: Dio())),
        ),
        BlocProvider(
          create: (context) => createCubit(DioConsumer(dio: Dio())),
        ),
         BlocProvider(
          create: (context) => HomePageCubit(DioConsumer(dio: Dio())),
        ),
         BlocProvider(
          create: (context) => CartCubit(DioConsumer(dio: Dio())),
        ),
        
      
      ],
      child: MaterialApp(
        home: SelectDate(),
      ),
    );
  }
}
