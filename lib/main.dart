import 'package:flutter/material.dart';
import 'package:flutter_getx_statemanagement/Example1/example_1_home_screen.dart';
import 'package:flutter_getx_statemanagement/Example2/example_2_home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      // GetX Statemanagement example 1
      // home: const Example1HomeScreen(),

      // GetX Statemanagement example 2
      home: const Example2HomeScreen(),
    );
  }
}
