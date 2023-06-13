import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/Utils/app_image.dart';

class HomeController extends GetxController {
  final onMenuHover = Matrix4.identity()..scale(1.0);
  var menuIndex = 0.obs;
  var menuItems = [
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Contact',
  ];

  final socialButtons = <String>[
    AppsImage.facebook,
    AppsImage.twitter,
    AppsImage.linkedin,
    AppsImage.insta,
    AppsImage.github,
  ];

  var socialBI = 0.obs;
}
