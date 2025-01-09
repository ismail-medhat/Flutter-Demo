import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/bloc/counter_bloc.dart';
import 'package:flutter_demo/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterView(),
      ),
    );
  }
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