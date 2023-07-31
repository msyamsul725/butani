import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:butani/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      theme: ThemeData().copyWith(
          colorScheme: const ColorScheme.light().copyWith(
              primaryContainer: const Color(0xff819689),
              secondaryContainer: const Color(0xff6c9b82))),
      debugShowCheckedModeBanner: false,
      home: const NavigationView(),
    ),
  );
}
