import 'package:flutter/material.dart';
import 'package:responsive/Feautured/Drawer/Widget/ListTile.dart';

class ColumnListTile extends StatelessWidget {
  const ColumnListTile({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        RowIconTitle(
          icon: Icons.person,
          title: "Profile",
        ),
        SizedBox(
          height: 35,
        ),
        RowIconTitle(
          icon: Icons.favorite,
          title: "favourite",
        ),
        SizedBox(
          height: 35,
        ),
        RowIconTitle(
          icon: Icons.shopping_cart,
          title: "Cart",
        ),
        SizedBox(
          height: 35,
        ),
        RowIconTitle(
          icon: Icons.settings,
          title: "settings",
        ),
        SizedBox(
          height: 35,
        ),
        RowIconTitle(
          icon: Icons.logout,
          title: "Logout",
        ),
        SizedBox(
          height: 35,
        ),
      ],
    );
  }
}
