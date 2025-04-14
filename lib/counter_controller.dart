import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  // Obs manages all the changes
  RxInt counter = 1.obs;
}