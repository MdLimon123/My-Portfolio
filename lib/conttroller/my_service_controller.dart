import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/Utils/app_image.dart';

class MyServiceController extends GetxController {
  var isApp = false.obs;
  var isGraphic = false.obs;
  var isDataAnalyst = false.obs;

  var hoveredIndex = 0.obs;

  final onHoverEffect = Matrix4.identity()..scale(1.0);

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  List image = [
    AppsImage.work1,
    AppsImage.work2,
    AppsImage.work1,
    AppsImage.work2,
    AppsImage.work1,
    AppsImage.work2
  ];
}
