import 'package:get/get.dart';
import 'package:personal_portfolio/Screens/HomeScreen/home_screen.dart';

class Routes {
  static String homeScreen = "/home_screen";
}

List<GetPage> getPages = [
  GetPage(name: Routes.homeScreen, page: () => const HomeScreen()),
];
