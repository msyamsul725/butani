import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../shared/theme.dart';
import '../controller/home_controller.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context, designSize: const Size(414, 896));
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Container(
            height: 100.h,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/images/icon-asia-butani2.png',
                      width: 42.w,
                      height: 42.h,
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: SvgPicture.asset('assets/images/location.svg'),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    SizedBox(
                      height: 42.h,
                      child: DropdownButton<String>(
                          value: controller.selectedOption,
                          underline: const SizedBox(),
                          onChanged: (String? newValue) {
                            controller.setLocation(newValue!);
                          },
                          hint: Text(
                            'Pilih Lokasi',
                            style: defaultTextStyle.copyWith(
                                fontSize: 14.sp,
                                color: primaryBlack,
                                fontWeight: FontWeight.w900),
                          ),
                          icon:
                              SvgPicture.asset('assets/images/arrow_down.svg'),
                          items: <String>['Jakarta', 'Surabaya']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: defaultTextStyle.copyWith(
                                    fontSize: 14.sp,
                                    color: primaryBlack,
                                    fontWeight: FontWeight.w700),
                              ),
                            );
                          }).toList()),
                    )
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/images/cart.svg'),
                    SizedBox(
                      width: 16.w,
                    ),
                    SvgPicture.asset('assets/images/notif.svg'),
                    SizedBox(
                      width: 16.w,
                    ),
                    SvgPicture.asset('assets/images/menu.svg'),
                  ],
                )
              ],
            ),
          );
        });
  }
}
