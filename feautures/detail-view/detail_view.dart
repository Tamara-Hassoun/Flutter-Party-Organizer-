import 'package:flutter/material.dart';
import 'package:responsive/Feautured/detail_view/widgets/myCArdSection.dart';

class detailView extends StatelessWidget {
  const detailView({super.key});

  @override
  Widget build(BuildContext context) {
    //  var width=   MediaQuery.sizeOf(context).width ;
    return SafeArea(
      child: Scaffold(body: MyCardsSection()),
    );
  }
}
