import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Tutorials"),
      ),
      body: Center(
        child: Text(counter.toString(), style: TextStyle(fontSize: 60),),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            counter++;
            setState(() {

            });
          }
      ),
    );
  }
}


// This is the code that tells us why we want the state management for our app
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//
//   int x = 0;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     // Timer run after the 1 second
//     Timer.periodic(Duration(seconds: 1), (timer) {
//       x++;
//       setState(() {
//
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print('rebuild');
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("GetX Tutorials"),
//       ),
//       body: Column(
//         children: [
//           Center(
//             child: Text(x.toString(), style: TextStyle(fontSize: 60),),
//           ),
//           Expanded(
//               child: ListView.builder(
//                   itemCount: 10000,
//                   itemBuilder: (context, index){
//                 return ListTile(
//                   title: Text(index.toString()),
//                 );
//               }),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//           onPressed: (){
//             x++;
//             setState(() {
//
//             });
//           }
//       ),
//     );
//   }
// }
