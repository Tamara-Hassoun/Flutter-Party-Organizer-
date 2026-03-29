// import 'package:flutter/material.dart';
// import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

// class HiddenDrawer extends StatefulWidget {
//   const HiddenDrawer({super.key});

//   @override
//   State<HiddenDrawer> createState() => _HiddenDrawerState();
// }

// class _HiddenDrawerState extends State<HiddenDrawer> {
//   List<ScreenHiddenDrawer>Pages=[];
//   @override
//   void initState() {
//     super.initState();
//     Pages=[
// ScreenHiddenDrawer
//     (
//       ItemHiddenMenu(
//       name: "HomePAge",
//        baseStyle: TextStyle(
//         color: Colors.white,
//         fontSize: 22,
//         fontWeight: FontWeight.bold
//        ),
//         selectedStyle: TextStyle(
//         color: Colors.white,
//         fontSize: 22,
//         fontWeight: FontWeight.bold
//        ),
//        colorLineSelected: Colors.white
//         ),
// HomePage()
//      ),
//      ScreenHiddenDrawer
//     (
//       ItemHiddenMenu(
//       name: "Setting",
//        baseStyle: TextStyle(
//         color: Colors.white,
//         fontSize: 22,
//         fontWeight: FontWeight.bold
//        ),
//         selectedStyle: TextStyle(
//         color: Colors.white,
//         fontSize: 22,
//         fontWeight: FontWeight.bold
//        ),
//        colorLineSelected: Colors.deepPurple
//         ),
// Setting()
//      )
//     ];
    
//   }
//   @override
//   Widget build(BuildContext context) {
//     return  HiddenDrawerMenu(screens: Pages ,
//      backgroundColorMenu: Colors.deepPurple,
//      initPositionSelected: 0,
//      slidePercent: 60,
//      );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//     );
//   }
// }
// class Setting extends StatefulWidget {
//   const Setting({super.key});

//   @override
//   State<Setting> createState() => _SettingState();
// }

// class _SettingState extends State<Setting> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }