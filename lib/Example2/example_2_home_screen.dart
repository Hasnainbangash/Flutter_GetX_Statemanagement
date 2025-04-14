import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Example2HomeScreen extends StatefulWidget {
  const Example2HomeScreen({super.key});

  @override
  State<Example2HomeScreen> createState() => _Example2HomeScreenState();
}

class _Example2HomeScreenState extends State<Example2HomeScreen> {

  double opacity = .4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Tutorials"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
