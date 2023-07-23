import 'package:flutter/material.dart';
import '../controller/menu_profile_controller.dart';
import 'package:butani/core.dart';
import 'package:get/get.dart';

class MenuProfileView extends StatelessWidget {
  const MenuProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MenuProfileController>(
      init: MenuProfileController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("MenuProfile"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: const [],
              ),
            ),
          ),
        );
      },
    );
  }
}
