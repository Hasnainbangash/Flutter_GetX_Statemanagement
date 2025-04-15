import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleThreeController extends GetxController {

  RxBool notifications = false.obs;

  setNotifications(bool value) {
    notifications.value = value;
    print(notifications.value);
  }

}