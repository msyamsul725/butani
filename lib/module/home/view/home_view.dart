import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:butani/core.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(414, 896));

    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          controller.view = this;

          return Scaffold(
            backgroundColor: black100,
            body: ListView(padding: EdgeInsets.zero, children: [
              const AppBarWidget(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          contentPadding: EdgeInsets.only(
                              left: 16.w, top: 13.h, bottom: 13.h),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              4.r,
                            ),
                          ),
                          hintText: 'Cari produk di kebun butani',
                          hintStyle: defaultTextStyle.copyWith(
                            fontSize: 16.sp,
                            color: black200,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                elevation:
                                    0, // Mengatur tinggi efek elevasi menjadi 0
                              ),
                              onPressed: () {
                                // Aksi yang dilakukan saat tombol ditekan
                              },
                              child: Container(
                                width: 174.w,
                                height: 41.h,
                                decoration: BoxDecoration(
                                  color: white,
                                  boxShadow: [
                                    BoxShadow(
                                        offset: const Offset(0, -8),
                                        color: shadowBlack,
                                        blurRadius: 16),
                                    BoxShadow(
                                        offset: const Offset(0, 32),
                                        color: shadowBlack,
                                        blurRadius: 70)
                                  ],
                                  borderRadius: BorderRadius.circular(4.r),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 41.w,
                                      height: 41.h,
                                      decoration: BoxDecoration(
                                        color: primaryBlue,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4.r),
                                          bottomLeft: Radius.circular(4.r),
                                          topRight: Radius.circular(20.r),
                                          bottomRight: Radius.circular(20.r),
                                        ),
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                            'assets/images/person_butani.svg'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 11.w,
                                    ),
                                    Text(
                                      'Menu Pelatih',
                                      style: defaultTextStyle.copyWith(
                                          fontSize: 14.sp,
                                          color: primaryBlue,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 174.w,
                              height: 41.h,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  elevation:
                                      0, // Mengatur tinggi efek elevasi menjadi 0
                                ),
                                onPressed: () {
                                  // Aksi yang dilakukan saat tombol ditekan
                                },
                                child: Container(
                                  width: 174.w,
                                  height: 41.h,
                                  decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(4.r),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: const Offset(0, -8),
                                            color: shadowBlack,
                                            blurRadius: 16),
                                        BoxShadow(
                                            offset: const Offset(0, 32),
                                            color: shadowBlack,
                                            blurRadius: 70)
                                      ]),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 41.w,
                                        height: 41.h,
                                        decoration: BoxDecoration(
                                          color: primaryBlue,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.r),
                                            bottomLeft: Radius.circular(4.r),
                                            topRight: Radius.circular(20.r),
                                            bottomRight: Radius.circular(20.r),
                                          ),
                                        ),
                                        child: Center(
                                          child: SvgPicture.asset(
                                              'assets/images/club_icon.svg'),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 11.w,
                                      ),
                                      Text(
                                        'Club Anda',
                                        style: defaultTextStyle.copyWith(
                                            fontSize: 14.sp,
                                            color: primaryBlue,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 37.h,
                        ),
                        Text(
                          'Produk Terlaris',
                          style: defaultTextStyle.copyWith(
                              fontSize: 16.sp,
                              color: primaryBlack,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 110.w,
                              height: 110.h,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  elevation:
                                      0, // Mengatur tinggi efek elevasi menjadi 0
                                ),
                                onPressed: () {
                                  // Aksi yang dilakukan saat tombol ditekan
                                },
                                child: Container(
                                    width: 110.w,
                                    height: 110.h,
                                    decoration: BoxDecoration(
                                        color: white,
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                        boxShadow: [
                                          BoxShadow(
                                              offset: const Offset(0, -8),
                                              color: shadowBlack,
                                              blurRadius: 16),
                                          BoxShadow(
                                              offset: const Offset(0, 32),
                                              color: shadowBlack,
                                              blurRadius: 70)
                                        ]),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/cobra.png',
                                        width: 82.w,
                                        height: 30.h,
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 110.w,
                              height: 110.h,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  elevation:
                                      0, // Mengatur tinggi efek elevasi menjadi 0
                                ),
                                onPressed: () {
                                  // Aksi yang dilakukan saat tombol ditekan
                                },
                                child: Container(
                                    width: 110.w,
                                    height: 110.h,
                                    decoration: BoxDecoration(
                                        color: white,
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                        boxShadow: [
                                          BoxShadow(
                                              offset: const Offset(0, -8),
                                              color: shadowBlack,
                                              blurRadius: 16),
                                          BoxShadow(
                                              offset: const Offset(0, 32),
                                              color: shadowBlack,
                                              blurRadius: 70)
                                        ]),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/vice.png',
                                        width: 76.w,
                                        height: 46.h,
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 110.w,
                              height: 110.h,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  elevation:
                                      0, // Mengatur tinggi efek elevasi menjadi 0
                                ),
                                onPressed: () {
                                  // Aksi yang dilakukan saat tombol ditekan
                                },
                                child: Container(
                                    width: 110.w,
                                    height: 110.h,
                                    decoration: BoxDecoration(
                                        color: white,
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                        boxShadow: [
                                          BoxShadow(
                                              offset: const Offset(0, -8),
                                              color: shadowBlack,
                                              blurRadius: 16),
                                          BoxShadow(
                                              offset: const Offset(0, 32),
                                              color: shadowBlack,
                                              blurRadius: 70)
                                        ]),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/fujikura.png',
                                        width: 84.w,
                                        height: 17.h,
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Text(
                          'Profilling Alat butani',
                          style: defaultTextStyle.copyWith(
                              fontSize: 16.sp,
                              color: primaryBlack,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/profil_alat_butani.jpg',
                              width: 1.sw,
                              height: 120.h,
                            ),
                            Positioned(
                              right: 12.w,
                              bottom: 12.h,
                              child: SizedBox(
                                width: 124.w,
                                height: 35.h,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    elevation:
                                        0, // Mengatur tinggi efek elevasi menjadi 0
                                  ),
                                  onPressed: () {
                                    // Aksi yang dilakukan saat tombol ditekan
                                  },
                                  child: Container(
                                    width: 124.w,
                                    height: 35.h,
                                    decoration: BoxDecoration(
                                        color: primaryBlue,
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                        boxShadow: [
                                          BoxShadow(
                                              offset: const Offset(0, -8),
                                              color: shadowBlack,
                                              blurRadius: 16),
                                          BoxShadow(
                                              offset: const Offset(0, 32),
                                              color: shadowBlack,
                                              blurRadius: 70)
                                        ]),
                                    child: Center(
                                      child: Text(
                                        'Coba Sekarang',
                                        style: defaultTextStyle.copyWith(
                                            fontSize: 14.sp,
                                            color: white,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Text(
                          'Penawaran User Baru',
                          style: defaultTextStyle.copyWith(
                              fontSize: 16.sp,
                              color: primaryBlack,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    width: 1.sw,
                    height: 300.h,
                    decoration: BoxDecoration(color: primaryBlue),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 24.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 135.w,
                                  child: Text(
                                    'Penawaran Khusus User Baru',
                                    style: defaultTextStyle.copyWith(
                                        fontSize: 25.sp,
                                        color: white,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Text(
                                  'Diskon hingga',
                                  style: defaultTextStyle.copyWith(
                                      fontSize: 16.sp,
                                      color: white,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Image.asset(
                                  'assets/images/kupon_for_new_user.png',
                                  width: 130.w,
                                  height: 59.h,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 24.w,
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 160),
                          height: 252.h,
                          child: ListView.builder(
                            itemCount: controller.feature.length,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.zero,
                            clipBehavior: Clip.none,
                            itemBuilder: (context, index) {
                              var item = controller.feature[index];
                              return InkWell(
                                onTap: () {
                                  Get.to(const ProductDetail());
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  width: 128.5.w,
                                  height: 252.h,
                                  padding: EdgeInsets.zero,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(
                                      4.r,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        '${item.thumbnail}',
                                        width: 130.w,
                                        height: 130.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.w),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 12.h,
                                            ),
                                            SizedBox(
                                              width: 106.w,
                                              child: Text(
                                                '${item.name}',
                                                style:
                                                    defaultTextStyle.copyWith(
                                                        fontSize: 11.sp,
                                                        color: primaryBlack,
                                                        fontWeight:
                                                            FontWeight.w400),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 6.h,
                                            ),
                                            SizedBox(
                                              width: 106.w,
                                              child: Text(
                                                "${item.price}",
                                                style:
                                                    defaultTextStyle.copyWith(
                                                        fontSize: 12.sp,
                                                        color: primaryBlack,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8.h,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: primaryYellow,
                                                  size: 16.sp,
                                                ),
                                                SizedBox(
                                                  width: 7.w,
                                                ),
                                                Text(
                                                  '${item.rating}',
                                                  style:
                                                      defaultTextStyle.copyWith(
                                                          fontSize: 11.sp,
                                                          color: black400,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  width: 6.w,
                                                ),
                                                Text(
                                                  'Terjual ${item.sold}',
                                                  style:
                                                      defaultTextStyle.copyWith(
                                                          fontSize: 10.sp,
                                                          color: black400,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: defaultMargin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Produk Terbaru',
                          style: defaultTextStyle.copyWith(
                              fontSize: 16.sp,
                              color: primaryBlack,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        SizedBox(
                          width: 400.5.w,
                          height: 252.h,
                          child: ListView.builder(
                            itemCount: controller.bestSeller.length,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.zero,
                            clipBehavior: Clip.none,
                            itemBuilder: (context, index) {
                              var item = controller.bestSeller[index];
                              return InkWell(
                                onTap: () {
                                  Get.to(const ProductDetail());
                                },
                                child: Container(
                                  width: 128.5.w,
                                  height: 252.h,
                                  padding: EdgeInsets.zero,
                                  margin: const EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(
                                      4.r,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        '${item.thumbnail}',
                                        width: 130.w,
                                        height: 130.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.w),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 12.h,
                                            ),
                                            SizedBox(
                                              width: 106.w,
                                              child: Text(
                                                '${item.name}',
                                                style:
                                                    defaultTextStyle.copyWith(
                                                        fontSize: 11.sp,
                                                        color: primaryBlack,
                                                        fontWeight:
                                                            FontWeight.w400),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 6.h,
                                            ),
                                            SizedBox(
                                              width: 106.w,
                                              child: Text(
                                                '${item.price}',
                                                style:
                                                    defaultTextStyle.copyWith(
                                                        fontSize: 12.sp,
                                                        color: primaryBlack,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8.h,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: primaryYellow,
                                                  size: 16.sp,
                                                ),
                                                SizedBox(
                                                  width: 7.w,
                                                ),
                                                Text(
                                                  '${item.rating}',
                                                  style:
                                                      defaultTextStyle.copyWith(
                                                          fontSize: 11.sp,
                                                          color: black400,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  width: 6.w,
                                                ),
                                                Text(
                                                  'Terjual ${item.sold}',
                                                  style:
                                                      defaultTextStyle.copyWith(
                                                          fontSize: 10.sp,
                                                          color: black400,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Exclusive Distributor',
                              style: defaultTextStyle.copyWith(
                                  fontSize: 16.sp,
                                  color: primaryBlack,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'Lihat Semua',
                              style: defaultTextStyle.copyWith(
                                  fontSize: 14.sp,
                                  color: primaryBlue,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1.0,
                            crossAxisCount: 3,
                            mainAxisSpacing: 6,
                            crossAxisSpacing: 6,
                          ),
                          itemCount: controller.exlusifDistriButor.length,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            var item = controller.exlusifDistriButor[index];
                            return SizedBox(
                              width: 110.w,
                              height: 110.h,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  elevation:
                                      0, // Mengatur tinggi efek elevasi menjadi 0
                                ),
                                onPressed: () {
                                  // Aksi yang dilakukan saat tombol ditekan
                                },
                                child: Container(
                                    width: 110.w,
                                    height: 110.h,
                                    decoration: BoxDecoration(
                                        color: white,
                                        borderRadius:
                                            BorderRadius.circular(4.r),
                                        boxShadow: [
                                          BoxShadow(
                                              offset: const Offset(0, -8),
                                              color: shadowBlack,
                                              blurRadius: 16),
                                          BoxShadow(
                                              offset: const Offset(0, 32),
                                              color: shadowBlack,
                                              blurRadius: 70)
                                        ]),
                                    child: Center(
                                      child: Image.network(
                                        '${item.logo}',
                                        width: 82.w,
                                        height: 30.h,
                                      ),
                                    )),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Text(
                      'Flash Sale Promo',
                      style: defaultTextStyle.copyWith(
                          fontSize: 16.sp,
                          color: primaryBlack,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    width: 1.sw,
                    height: 300.h,
                    decoration: BoxDecoration(color: green67),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 24.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 135.w,
                                  child: Text(
                                    'Penawaran Khusus User Baru',
                                    style: defaultTextStyle.copyWith(
                                        fontSize: 25.sp,
                                        color: white,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Text(
                                  'Diskon hingga',
                                  style: defaultTextStyle.copyWith(
                                      fontSize: 16.sp,
                                      color: white,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Image.asset(
                                  'assets/images/kupon_flash_sale.png',
                                  width: 130.w,
                                  height: 59.h,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 24.w,
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 160),
                          height: 252.h,
                          child: ListView.builder(
                            itemCount: controller.flashSale.length,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.zero,
                            clipBehavior: Clip.none,
                            itemBuilder: (context, index) {
                              var item = controller.flashSale[index];
                              return InkWell(
                                onTap: () {
                                  Get.to(const ProductDetail());
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  width: 128.5.w,
                                  height: 252.h,
                                  padding: EdgeInsets.zero,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(
                                      4.r,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        '${item.thumbnail}',
                                        width: 130.w,
                                        height: 130.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.w),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 12.h,
                                            ),
                                            SizedBox(
                                              width: 106.w,
                                              child: Text(
                                                '${item.name}',
                                                style:
                                                    defaultTextStyle.copyWith(
                                                        fontSize: 11.sp,
                                                        color: primaryBlack,
                                                        fontWeight:
                                                            FontWeight.w400),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 6.h,
                                            ),
                                            SizedBox(
                                              width: 106.w,
                                              child: Text(
                                                "${item.price}",
                                                style:
                                                    defaultTextStyle.copyWith(
                                                        fontSize: 12.sp,
                                                        color: primaryBlack,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8.h,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: primaryYellow,
                                                  size: 16.sp,
                                                ),
                                                SizedBox(
                                                  width: 7.w,
                                                ),
                                                Text(
                                                  '${item.rating}',
                                                  style:
                                                      defaultTextStyle.copyWith(
                                                          fontSize: 11.sp,
                                                          color: black400,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  width: 6.w,
                                                ),
                                                Text(
                                                  'Terjual ${item.sold}',
                                                  style:
                                                      defaultTextStyle.copyWith(
                                                          fontSize: 10.sp,
                                                          color: black400,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Text(
                      'Produk Lainnya',
                      style: defaultTextStyle.copyWith(
                          fontSize: 16.sp,
                          color: primaryBlack,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: SizedBox(
                      width: 1.sw,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.other.length, // Jumlah total item
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 300.h,
                            mainAxisSpacing: 22.h,
                            crossAxisSpacing: 22.w),
                        itemBuilder: (BuildContext context, int index) {
                          var item = controller.other[index];
                          return InkWell(
                            onTap: () {
                              Get.to(const ProductDetail());
                            },
                            child: Container(
                              width: 202.5.w,
                              height: 300.h,
                              padding: EdgeInsets.zero,
                              margin: EdgeInsets.zero,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(
                                  4.r,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.network(
                                    '${item.thumbnail}',
                                    width: 172.w,
                                    height: 172.h,
                                    fit: BoxFit.fitWidth,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12.w),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 12.h,
                                        ),
                                        SizedBox(
                                          width: 148.w,
                                          child: Text(
                                            '${item.name}',
                                            style: defaultTextStyle.copyWith(
                                                fontSize: 11.sp,
                                                color: primaryBlack,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6.h,
                                        ),
                                        SizedBox(
                                          width: 106.w,
                                          child: Text(
                                            '${item.price}',
                                            style: defaultTextStyle.copyWith(
                                                fontSize: 12.sp,
                                                color: primaryBlack,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: primaryYellow,
                                              size: 16.sp,
                                            ),
                                            SizedBox(
                                              width: 7.w,
                                            ),
                                            Text(
                                              '${item.rating}',
                                              style: defaultTextStyle.copyWith(
                                                  fontSize: 11.sp,
                                                  color: black400,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(
                                              width: 6.w,
                                            ),
                                            Text(
                                              'Terjual ${item.sold}',
                                              style: defaultTextStyle.copyWith(
                                                  fontSize: 10.sp,
                                                  color: black400,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  )
                ],
              ),
            ]),
          );
        });
  }
}
