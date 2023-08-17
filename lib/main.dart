import 'package:butani/setup.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:butani/core.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final SupabaseClient supabaseHandler = Supabase.instance.client;
Future<void> permission() async {
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location services are disabled.');
  }

  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }
}

void main() async {
  await initialize();
  await permission();

  runApp(
    GetMaterialApp(
        theme: ThemeData().copyWith(
            colorScheme: const ColorScheme.light().copyWith(
                primaryContainer: const Color(0xff819689),
                secondaryContainer: const Color(0xff6c9b82))),
        debugShowCheckedModeBanner: false,
        home: supabaseHandler.auth.currentUser != null
            ? const NavigationView()
            : const LoginView()),
  );
}
