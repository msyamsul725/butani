import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../shared/theme.dart';
import '../controller/dashboard_controller.dart';
import 'package:butani/core.dart';
import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(414, 896));
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: black100,
          resizeToAvoidBottomInset: true,
          body: controller.listBody[controller.curentIndex],
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0.r),
              topRight: Radius.circular(16.0.r),
            ),
            child: BottomNavigationBar(
              mouseCursor: MouseCursor.uncontrolled,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: primaryBlue,
              unselectedItemColor: primaryBlue,
              showSelectedLabels: false,
              currentIndex: controller.curentIndex,
              onTap: (index) => controller.setIndexDashboard(index),
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/home_outline.svg'),
                  activeIcon: SvgPicture.asset('assets/images/home_fill.svg'),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/flag_outline.svg'),
                  activeIcon: SvgPicture.asset('assets/images/flag_fill.svg'),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon:
                      SvgPicture.asset('assets/images/transaction_outline.svg'),
                  activeIcon:
                      SvgPicture.asset('assets/images/transaction_fill.svg'),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/message_outline.svg'),
                  activeIcon:
                      SvgPicture.asset('assets/images/message_fill.svg'),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/history_outline.svg'),
                  activeIcon:
                      SvgPicture.asset('assets/images/history_fill.svg'),
                  label: '',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
