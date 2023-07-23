import 'package:butani/core.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  NavigationView? view;

  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  final screen = [
    const HomeNewView(),
  ];
}
