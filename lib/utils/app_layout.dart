import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  // Get package, you don't even need to pass context in
  static _getScreenHeight() {
    return Get.height;
  }

  static _getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixel) {
    double x = _getScreenHeight() / pixel;
    return _getScreenHeight() / x;
  }

  static getWidth(double pixel) {
    double x = _getScreenWidth() / pixel;
    return _getScreenWidth() / x;
  }
}
