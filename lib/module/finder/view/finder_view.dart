import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/const.dart';
import '../../../shared/theme.dart';
import '../controller/finder_controller.dart';
import 'package:butani/core.dart';
import 'package:get/get.dart';

class FinderView extends StatelessWidget {
  const FinderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(414, 896));
    return GetBuilder<FinderController>(
      init: FinderController(),
      builder: (controller) {
        controller.view = this;

        return Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: black200,
                      size: 20.sp,
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 16.w, top: 13.h, bottom: 13.h),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        4.r,
                      ),
                    ),
                    hintText: 'Cari produk di Asiabutani',
                    hintStyle: defaultTextStyle.copyWith(
                      fontSize: 16.sp,
                      color: black200,
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              width: 1.sw,
              child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: 6,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        Container(
                          width: 1.sw,
                          height: 2.h,
                          color: black100,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.w, vertical: 16.h),
                          color: Colors.white,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/image_find1.jpg',
                                width: 68.w,
                                height: 68.h,
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Royale Jakarta butani Club',
                                    style: heavyTextStyle.copyWith(
                                        fontSize: 16.sp, color: primaryBlack),
                                  ),
                                  Text(
                                    'Jalan Raya Halim Tiga, Halim\nPerdanakusuma',
                                    style: romanTextStyle.copyWith(
                                        fontSize: 14.sp, color: black400),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        );
      },
    );
  }
}
