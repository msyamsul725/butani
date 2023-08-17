import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

import '../../main.dart';
import '../../module/login/view/login_view.dart';
import '../../module/login/widget/otp_page.dart';
import '../../module/navigation/view/navigation_view.dart';
import '../../shared/util/show_loading/show_loading.dart';

User? get currentUser {
  if (supabaseHandler.auth.currentUser == null) {
    return null;
  }
  return supabaseHandler.auth.currentUser;
}

StreamSubscription<AuthState>? authSubscription;

class AuthServiceSupabase {
  late final StreamSubscription<AuthState> authStateSubscription;
  bool _redirecting = false;
  String? tokenMessage;
  double topPadding = Get.mediaQuery.padding.top;

  createUser({
    required final bool isSign,
    required final String email,
    required final String password,
    required final String username,
  }) async {
    try {
      showLoading();
      await supabaseHandler.auth.signUp(
        email: email,
        password: '000000',
        data: {'full_name': username},
      );

      hideLoading();

      Get.to(OtpPage(email: email, isSign: isSign, username: username));
    } on AuthException catch (error) {
      hideLoading();
      Get.snackbar(
        'Info', // Judul snackbar
        error.message, // Isi snackbar
        snackPosition: SnackPosition.TOP, // Posisi snackbar
        margin: EdgeInsets.only(top: topPadding),
        duration: const Duration(seconds: 4), // Durasi snackbar
        backgroundColor: const Color.fromARGB(
            143, 175, 76, 76), // Warna latar belakang snackbar
        colorText: Colors.white, // Warna teks snackbar
      );
    } catch (error) {
      hideLoading();
      Get.snackbar(
        'Info', // Judul snackbar
        'Error..', // Isi snackbar
        snackPosition: SnackPosition.TOP, // Posisi snackbar
        margin: EdgeInsets.only(top: topPadding),
        duration: const Duration(seconds: 4), // Durasi snackbar
        backgroundColor: const Color.fromARGB(
            143, 175, 76, 76), // Warna latar belakang snackbar
        colorText: Colors.white, // Warna teks snackbar
      );
    } finally {
      // hideLoading();
    }
  }

  Future<void> login(
      {required final String email, required final bool isSign}) async {
    showLoading();
    try {
      await supabaseHandler.auth.signInWithOtp(
          emailRedirectTo:
              kIsWeb ? null : 'io.supabase.flutterquickstart://login-callback/',
          email: email);

      hideLoading();
      Get.snackbar(
        'Info', // Judul snackbar
        'Cek Email Untuk Melanjutkan Login', // Isi snackbar
        snackPosition: SnackPosition.TOP,
        margin: EdgeInsets.only(top: topPadding), // Posisi snackbar
        duration: const Duration(seconds: 4), // Durasi snackbar
        backgroundColor: const Color.fromARGB(
            143, 76, 175, 79), // Warna latar belakang snackbar
        colorText: Colors.white, // Warna teks snackbar
      );

      Get.to(OtpPage(email: email, isSign: isSign, username: ''));
    } on AuthException catch (error) {
      hideLoading();
      var errorLogin =
          'null value in column "full_name" of relation "tbl_users" violates not-null constraint';
      Get.snackbar(
        'Info', // Judul snackbar
        error.message == errorLogin
            ? "Email sepertinya belum terdaftar, Mohon dicoba lagi"
            : error.message, // Isi snackbar
        snackPosition: SnackPosition.TOP, // Posisi snackbar
        margin: EdgeInsets.only(top: topPadding),
        duration: const Duration(seconds: 4), // Durasi snackbar
        backgroundColor: const Color.fromARGB(
            143, 175, 76, 76), // Warna latar belakang snackbar
        colorText: Colors.white, // Warna teks snackbar
      );
    } catch (error) {
      hideLoading();
      Get.snackbar(
        'Info', // Judul snackbar
        'Error..', // Isi snackbar
        snackPosition: SnackPosition.TOP, // Posisi snackbar
        margin: EdgeInsets.only(top: topPadding),
        duration: const Duration(seconds: 4), // Durasi snackbar
        backgroundColor: const Color.fromARGB(
            143, 175, 76, 76), // Warna latar belakang snackbar
        colorText: Colors.white, // Warna teks snackbar
      );
    } finally {
      // hideLoading();
    }
  }

  bool isSignIn() {
    return (supabaseHandler.auth.currentUser == null) ? false : true;
  }

  signOut() async {
    await supabaseHandler.auth.signOut();
    Get.offAll(const LoginView());
  }

  authState() {
    authStateSubscription =
        supabaseHandler.auth.onAuthStateChange.listen((data) {
      if (_redirecting) return;
      final session = data.session;

      if (session != null) {
        _redirecting = true;
        Get.offAll(const NavigationView());
      }
    });
  }

  final stream = supabaseHandler
      .from("tbl_users")
      .stream(primaryKey: ["id"]).eq('id', currentUser?.id);

  doOtp() async {}

  verifyOtp(
    bool isSign,
    String userOtp,
    String email,
    String username,
  ) async {
    try {
      final user = await supabaseHandler.auth.verifyOTP(
        token: userOtp,
        type: isSign ? OtpType.magiclink : OtpType.signup,
        email: email,
      );

      if (user.user != null) {
        // Ambil data pengguna dari tabel 'users'
        // final userData = await supabaseHandler
        //     .from('tbl_users')
        //     .select('*')
        //     .eq('id', currentUser!.id)
        //     // ignore: deprecated_member_use
        //     .execute();

        // for (var items in userData.data) {
        // final statusUser = items['status'];
        // final userName = items['full_name'];
        // final phone = items['zego_id'].toString();

        Navigator.push(
          Get.context!,
          MaterialPageRoute(builder: (context) => const NavigationView()),
        );
        // }
      }
    } on AuthException catch (e) {
      Get.snackbar(
        e.message.toString(),
        "Failed",
        colorText: Colors.white,
      );
    }
  }

  verifyOtpLogin(
    bool isSign,
    String userOtp,
    String email,
  ) async {
    try {
      final user = await supabaseHandler.auth.verifyOTP(
          token: userOtp,
          type: isSign ? OtpType.magiclink : OtpType.signup,
          email: email);
      if (user.user != null) {
        // // Ambil data pengguna dari tabel 'users'
        // final userData = await supabaseHandler
        //     .from('tbl_users')
        //     .select('*')
        //     .eq('id', currentUser!.id)
        //     // ignore: deprecated_member_use
        //     .execute();

        // for (var items in userData.data) {
        //   final statusUser = items['status'];
        //   final userName = items['full_name'];
        //   final phone = items['zego_id'].toString();

        Navigator.push(
          Get.context!,
          MaterialPageRoute(builder: (context) => const NavigationView()),
        );
        // }
      }
    } on AuthException catch (e) {
      Get.snackbar(
        e.message.toString(),
        "Failed",
        colorText: Colors.white,
      );
    }
  }

  doLoginWa() async {
    await supabaseHandler.auth.signInWithOtp(phone: '6289520177891');
  }
}
