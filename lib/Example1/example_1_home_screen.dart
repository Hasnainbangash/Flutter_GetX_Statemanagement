import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_statemanagement/Example1/counter_controller.dart';

class Example1HomeScreen extends StatefulWidget {
  const Example1HomeScreen({super.key});

  @override
  State<Example1HomeScreen> createState() => _Example1HomeScreenState();
}

class _Example1HomeScreenState extends State<Example1HomeScreen> {

  final CounterController controller = Get.put(CounterController());

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
        // By using the obx it creates a listener that listens to the observing objects
        child: Obx((){
          return Text(controller.counter.toString(), style: TextStyle(fontSize: 60),);
        }),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            controller.incrementCounter();
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
