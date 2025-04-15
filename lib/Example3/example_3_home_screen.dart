import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Example3HomeScreen extends StatefulWidget {
  const Example3HomeScreen({super.key});

  @override
  State<Example3HomeScreen> createState() => _Example3HomeScreenState();
}

class _Example3HomeScreenState extends State<Example3HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorials'),
      ),
      body: Column(
        children: [
          Row(
            children: [

            ],
          ),
        ],
      ),
    );
  }
}
