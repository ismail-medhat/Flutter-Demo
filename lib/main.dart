import 'package:flutter/material.dart';
import 'package:flutter_demo/homepage.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}



// Flutter Widget
// Text
// Container
// Image
// Row & Column
// SingleChildScrollView & Wrap
// ListView & ListView.builder & ListView.separated
// GridView
// ListTile & Card
// Icon & IconButton && FloatingActionButton && MatrialButton
// SizedBox
// Expended
// SwitchListTile & Switch
// RadioListTile & Radio
// ChekboxListTile & Chekbox
// Stack
// TextField & TextFormField
// AppBar
// Drawer & TabBar & BottomNavigatorBar
// PageView & PageViewBuilder
// ShowDialog
// BottomSheet & SnackBar
//-------------------------------------
// Flutter navigation
// 1- Push - PushReplacement
// # Navigator.of(context).push(MatrialPageRoute(builder:(context)=>AboutUs()))
// 2- PushName - PushReplacementName
// # Navigator.of(context).pushName('about')
// 3- Pop
// # Navigator.of(context).pop()
// 4- PushAndRemoveUntil
// # Navigator.of(context).PushAndRemoveUntil(MatrialPageRoute(builder:(context)=>AboutUs()),(route)=>false)