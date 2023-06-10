import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyServiceController extends GetxController {
  var isApp = false.obs;
  var isGraphic = false.obs;
  var isDataAnalyst = false.obs;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);
}
