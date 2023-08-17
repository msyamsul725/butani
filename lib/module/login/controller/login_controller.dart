import 'package:butani/service/auth_supabase/supabase_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/login_view.dart';

class LoginController extends GetxController {
  LoginView? view;
  bool signUp = true;

  final TextEditingController email = TextEditingController();
  final TextEditingController userName = TextEditingController();
  doCreateUser() async {
    await AuthServiceSupabase().createUser(
        isSign: signUp,
        email: email.text,
        password: '',
        username: userName.text);
  }

  doLogin() async {
    await AuthServiceSupabase().login(email: email.text, isSign: true);
  }

  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    super.dispose();
  }
}
