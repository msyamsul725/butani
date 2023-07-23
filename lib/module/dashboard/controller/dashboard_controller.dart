import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../finder/view/finder_view.dart';
import '../../home/view/home_view.dart';
import '../view/dashboard_view.dart';

class DashboardController extends GetxController {
  DashboardView? view;
  int curentIndex = 0;
  List<Widget> listBody = [
    const HomeView(),
    const FinderView(),
    const Center(
      child: Text('screen Transaksi'),
    ),
    const Center(
      child: Text('screen message'),
    ),
    const Center(
      child: Text('screen history'),
    ),
  ];
  void setIndexDashboard(int i) {
    curentIndex = i;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
