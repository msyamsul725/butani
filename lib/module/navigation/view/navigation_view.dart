import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:butani/core.dart';

class NavigationView extends StatelessWidget {
  const NavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      init: NavigationController(),
      builder: (controller) {
        controller.view = this;

        return Obx(() {
          return Scaffold(
            body: IndexedStack(
              index: controller.selectedIndex.value,
              children: controller.screen,
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(.1),
                  )
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                  child: GNav(
                    rippleColor: Colors.grey[300]!,
                    hoverColor: Colors.grey[100]!,
                    gap: 8,
                    activeColor: green67,
                    iconSize: 24,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    duration: const Duration(milliseconds: 400),
                    tabBackgroundColor: green17,
                    color: Colors.blueGrey,
                    tabs: const [
                      GButton(
                        icon: MdiIcons.home,
                        text: 'Home',
                      ),
                      GButton(
                        icon: MdiIcons.heart,
                        text: 'Likes',
                      ),
                      GButton(
                        icon: MdiIcons.message,
                        text: 'Chat',
                      ),
                      GButton(
                        icon: Icons.person,
                        text: 'Profile',
                      ),
                    ],
                    selectedIndex: controller.selectedIndex.value,
                    onTabChange: (index) {
                      controller.changeIndex(index);
                      controller.update();
                    },
                  ),
                ),
              ),
            ),
          );
        });
      },
    );
  }
}
