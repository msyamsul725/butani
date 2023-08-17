import 'package:flutter/material.dart';
import 'package:butani/core.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) {
        controller.view = this;

        /*
      ------------------------
      https://capekngoding.com
      ------------------------
      Starring:
      Name: Dicky Darmawan
      Github: https://github.com/Dicky019
      ------------------------
      -
      ------------------------
      Code generation with snippets can be a good solution for you or it can kill you.
      A basic understanding of Dart and Flutter is required.
      Keep it in mind, Our snippet can't generate many files yet.
      So, all of our snippets are put in one file which is not best practice.
      You need to do the optimization yourself, and at least you are familiar with using Flutter.
      ------------------------
      */

        List<Map<String, dynamic>> card1 = [
          {
            'name': 'Marks',
            'subname': 'Average: 8.9',
            'color': const Color(0xffFF9500),
            'icon':
                'https://capekngoding.com/uploads/62f5f1157da6a_icon_thumup.png',
          },
          {
            'name': 'Debts',
            'subname': 'None',
            'color': const Color(0xffFF3B30),
            'icon':
                'https://capekngoding.com/uploads/62f5f112a318c_icon_fire.png',
          },
          {
            'name': 'History',
            'subname': '',
            'color': const Color(0xff34C759),
            'icon':
                'https://capekngoding.com/uploads/62f5f116098a3_icon_time.png',
          },
        ];

        List<Map<String, dynamic>> card2 = [
          {
            'name': 'News',
            'subname': '',
            'color': const Color(0xff546CF6),
            'icon':
                'https://capekngoding.com/uploads/62f5f1118bc84_icon_compas.png',
          },
          {
            'name': 'Teachers',
            'subname': '',
            'color': const Color(0xff546CF6),
            'icon':
                'https://capekngoding.com/uploads/62f5f11340f58_icon_peoples.png',
          },
          {
            'name': 'Rools',
            'subname': '',
            'color': const Color(0xff546CF6),
            'icon':
                'https://capekngoding.com/uploads/62f5f114ec843_icon_shield.png',
          },
        ];

        return Scaffold(
          backgroundColor: const Color(0xffF3F5F9),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.grey[900],
            ),
            titleTextStyle: TextStyle(
              color: Colors.grey[900],
            ),
            title: const Text("Profile"),
            actions: [
              IconButton(
                onPressed: () {
                  AuthServiceSupabase().signOut();
                },
                icon: const Icon(
                  Icons.logout,
                  size: 24.0,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          body: const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [],
              ),
            ),
          ),
        );
      },
    );
  }
}
