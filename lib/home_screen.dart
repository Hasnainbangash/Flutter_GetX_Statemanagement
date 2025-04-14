import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int x = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Tutorials"),
      ),
      body: Center(
        child: Text(x.toString(), style: TextStyle(fontSize: 60),),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            x++;
            setState(() {

            });
          }
      ),
    );
  }
}
