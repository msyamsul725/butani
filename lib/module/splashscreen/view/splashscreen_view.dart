import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controller/splashscreen_controller.dart';
import 'package:butani/core.dart';
import 'package:get/get.dart';

class SplashscreenView extends StatelessWidget {
  const SplashscreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashscreenController>(
      init: SplashscreenController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: primaryBlue,
          body: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              '',
              // 'assets/images/splash_butani.png',
              height: 548.h,
              width: 361.w,
              fit: BoxFit.fitHeight,
            ),
          ),
        );
      },
    );
  }
}
