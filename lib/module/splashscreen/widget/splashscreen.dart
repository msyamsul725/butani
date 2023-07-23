// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:butani/core.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  Widget build(BuildContext context) {
        ScreenUtil.init(context, designSize: const Size(414, 896));
    return Builder(builder: (context) {
      Future<bool> loading() async {
        await Future.delayed(const Duration(seconds: 2));

        // ignore: use_build_context_synchronously
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DashboardView()),
        );
        return true;
      }

      return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              FutureBuilder(
                future: loading(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/images/splash_butani.png',
                height: 548.h,
                width: 361.w,
                fit: BoxFit.fitHeight,
              ),
            );
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
      );
    });
  }
}
