import 'package:flutter/material.dart';
import 'package:butani/core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeNewView extends StatelessWidget {
  const HomeNewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(414, 896));
    return GetBuilder<HomeNewController>(
      init: HomeNewController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            toolbarHeight: MediaQuery.sizeOf(context).height * 0.14,
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: green67,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.2,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    padding: const EdgeInsets.symmetric(
                      vertical: 6.0,
                      horizontal: 12.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey[400]!,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            initialValue: null,
                            decoration: const InputDecoration.collapsed(
                              filled: true,
                              fillColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              hintText: "Search",
                            ),
                            onFieldSubmitted: (value) {},
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.search),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.notifications,
                      color: black300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    decoration: BoxDecoration(
                      color: green67,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  MdiIcons.wallet,
                                  color: black300,
                                ),
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "My Wallet",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Rp 200.000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 2,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  MdiIcons.gold,
                                  color: black300,
                                ),
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "My Coins",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "200.000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "My Service",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  LayoutBuilder(
                    builder: (context, constraint) {
                      List menus = [
                        {
                          "icon": MdiIcons.school,
                          "label": "Course",
                          "onTap": () {},
                        },
                        {
                          "icon": MdiIcons.sprout,
                          "label": "My Plant",
                          "onTap": () {},
                        },
                        {
                          "icon": MdiIcons.weatherCloudy,
                          "label": "Weather",
                          "onTap": () {
                            Get.to(const WeatherView());
                          },
                        },
                        {
                          "icon": MdiIcons.store,
                          "label": "Store",
                          "onTap": () {
                            Get.offAll(const DashboardView());
                          },
                        },
                      ];

                      return Wrap(
                        children: List.generate(
                          menus.length,
                          (index) {
                            var item = menus[index];

                            var size = constraint.biggest.width / 4;

                            return SizedBox(
                              width: size,
                              height: size,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.blueGrey,
                                  animationDuration:
                                      const Duration(milliseconds: 1000),
                                  backgroundColor: Colors.transparent,
                                  splashFactory: InkSplash.splashFactory,
                                  shadowColor: Colors.transparent,
                                  elevation: 0.0,
                                ),
                                onPressed: () => item["onTap"](),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      item["icon"],
                                      color: Colors.blueGrey,
                                    ),
                                    const SizedBox(
                                      height: 4.0,
                                    ),
                                    Text(
                                      "${item["label"]}",
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      " New Course",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    height: 180.0,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: controller.newCourse.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var item = controller.newCourse[index];
                        return Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          height: 180.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                item['image'],
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      " Popular Plants",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: SizedBox(
                      width: 1.sw,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount:
                            controller.products.length, // Jumlah total item
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 300.h,
                            mainAxisSpacing: 22.h,
                            crossAxisSpacing: 22.w),
                        itemBuilder: (BuildContext context, int index) {
                          var item = controller.products[index];
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
                                    '${item['photo_url']}',
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
                                            '${item['product_name']}',
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
                                            '${item['price']}',
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
                                              '${item['rating']}',
                                              style: defaultTextStyle.copyWith(
                                                  fontSize: 11.sp,
                                                  color: black400,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(
                                              width: 6.w,
                                            ),
                                            Text(
                                              'Terjual ${item['sold']}',
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
