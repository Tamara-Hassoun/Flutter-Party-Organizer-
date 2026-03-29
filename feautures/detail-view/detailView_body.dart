import 'package:flutter/material.dart';
import 'package:responsive/Feautured/detail_view/widgets/Buy_Ticket.dart';
import 'package:responsive/Feautured/detail_view/widgets/RowListTile.dart';
import 'package:responsive/Feautured/detail_view/widgets/vistoryBody.dart';

class detailViewBody extends StatelessWidget {
  const detailViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        visitorsBody(),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "international Band ",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
              Text(
                " Music Concert",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              RowListTile(
                title: "14 Descember ,2024",
                subtitle: "Tuesday 4.00-9.00Pm",
                icon: Icons.calendar_month_sharp,
              ),
              SizedBox(
                height: 22,
              ),
              RowListTile(
                  title: "Gala Convention Center",
                  subtitle: "36 Gold Street London Uk",
                  icon: Icons.location_on_rounded),
              SizedBox(
                height: 30,
              ),
              BuyTicket(),
              SizedBox(
                height: 22,
              ),
              Text(
                "About Avent ",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Enjoy your fovourit dishes and a lovely ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "your Friend and family and have a great time ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
            ],
          ),
        )
      ],
    );
  }
}
