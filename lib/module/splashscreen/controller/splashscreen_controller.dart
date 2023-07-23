import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../../routes/routes_name.dart';
import '../view/splashscreen_view.dart';

class SplashscreenController extends GetxController {
  SplashscreenView? view;

  // SplashProvider(Get.context) {
  //   movePage();
  // }
  // BuildContext context;
  // void movePage() async {
  //   Future.delayed(const Duration(seconds: 3), () {
  //     // Navigasi ke halaman berikutnya (misalnya halaman utama)
  //     context.goNamed(Routes.dashboard);
  //   });
  // }
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
