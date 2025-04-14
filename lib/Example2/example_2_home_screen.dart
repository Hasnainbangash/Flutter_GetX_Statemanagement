import 'package:flutter/material.dart';
import 'package:flutter_getx_statemanagement/Example2/example_two_controller.dart';
import 'package:get/get.dart';

class Example2HomeScreen extends StatefulWidget {
  const Example2HomeScreen({super.key});

  @override
  State<Example2HomeScreen> createState() => _Example2HomeScreenState();
}

class _Example2HomeScreenState extends State<Example2HomeScreen> {

  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());
  // double opacity = .4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Tutorials"),
      ),
      body: Column(
        children: [
          Obx((){
            return Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(exampleTwoController.opacity.value),
            );
          }),

          Obx((){
            return Slider(value: exampleTwoController.opacity.value, onChanged: (value){
              print(value);
              exampleTwoController.setOpacity(value);
            });
          }),
        ],
      ),
    );
  }
}
