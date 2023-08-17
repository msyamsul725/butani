import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pinput/pinput.dart';

import '../../../service/auth_supabase/supabase_auth_service.dart';

class OtpPage extends StatefulWidget {
  final String email;
  final bool isSign;
  final String username;
  const OtpPage(
      {Key? key,
      required this.email,
      required this.isSign,
      required this.username})
      : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  // final TextEditingController _firstController = TextEditingController();
  // final TextEditingController _secondController = TextEditingController();
  // final TextEditingController _thirdController = TextEditingController();
  // final TextEditingController _fourthController = TextEditingController();
  // final TextEditingController _fifthController = TextEditingController();
  // final TextEditingController _sixthController = TextEditingController();
  String? otpCode;

  @override
  void dispose() {
    // _firstController.dispose();
    // _secondController.dispose();
    // _thirdController.dispose();
    // _fourthController.dispose();
    // _fifthController.dispose();
    // _sixthController.dispose();
    super.dispose();
  }

  // verify otp
  verifyOtp(
    String userOtp,
  ) async {
    widget.isSign
        ? await AuthServiceSupabase().verifyOtpLogin(
            widget.isSign,
            userOtp,
            widget.email,
          )
        : await AuthServiceSupabase()
            .verifyOtp(widget.isSign, userOtp, widget.email, widget.username);
  }

  void _login() {
    if (otpCode != null) {
      verifyOtp(otpCode!);
    } else {
      Get.snackbar(
        "Enter 6-Digit code",
        "Failed",
        colorText: Colors.white,
      );
    }
  }

  // _buildSocialLogo(file) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: <Widget>[
  //       Image.asset(
  //         file,
  //         height: 38.5,
  //       ),
  //     ],
  //   );
  // }

  final ButtonStyle style = ElevatedButton.styleFrom(
      minimumSize: const Size(188, 48),
      backgroundColor: Colors.green,
      elevation: 6,
      textStyle: const TextStyle(fontSize: 16),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(50),
      )));

  Widget buildText(String text) => Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 24, color: Colors.white),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // backgroundColor: Color(0xff215D5F),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bg_login.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 200),
                  buildText('Enter 6 digit OTP'),
                  buildText('sent to your email'),
                  const SizedBox(height: 50),
                  Pinput(
                    length: 6,
                    showCursor: true,
                    defaultPinTheme: PinTheme(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: const Color(0xff2C474A),
                        ),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                    onCompleted: (value) {
                      setState(() {
                        otpCode = value;
                      });
                    },
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      style: style,
                      onPressed: _login,
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      )),
                  const SizedBox(height: 80),
                  const Text(
                    "Cek Email untuk mendapatkan OTP",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
