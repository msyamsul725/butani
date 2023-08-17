import 'package:flutter/material.dart';
import 'package:butani/core.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
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
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      // Konten halaman lainnya
                      const SizedBox(
                        height: 80.0,
                      ),
                      Image.asset(
                        "assets/images/logo_butani.png",
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.4,
                        fit: BoxFit.fill,
                      ),
                      Center(
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.7,
                          child: Column(
                            children: [
                              !controller.signUp
                                  ? Column(
                                      children: [
                                        Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.06,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(24.0),
                                            ),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 24.0,
                                          ), // Ubah padding atas dan bawah menjadi 8.0
                                          child: TextFormField(
                                            controller: controller.userName,

                                            onChanged: (value) {},
                                            textAlign: TextAlign
                                                .left, // Mengatur teks menjadi rata tengah
                                            decoration: const InputDecoration(
                                              border: InputBorder
                                                  .none, // Menghilangkan border
                                              hintText: 'Enter your username',
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20.0,
                                        ),
                                      ],
                                    )
                                  : Container(),
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.06,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(24.0),
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24.0,
                                ), // Ubah padding atas dan bawah menjadi 8.0
                                child: TextFormField(
                                  controller: controller.email,

                                  onChanged: (value) {},
                                  textAlign: TextAlign
                                      .left, // Mengatur teks menjadi rata tengah
                                  decoration: const InputDecoration(
                                    border: InputBorder
                                        .none, // Menghilangkan border
                                    hintText: 'Enter your email',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.06,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(44.0),
                                    ),
                                  ),
                                  onPressed: () {
                                    controller.signUp
                                        ? controller.doLogin()
                                        : controller.doCreateUser();
                                  },
                                  child: Text(
                                    controller.signUp ? "Sign In" : "Sign up",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 60.0,
                              ),
                              controller.signUp
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        const Text(
                                          "Don’t have an Account ? ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            controller.signUp =
                                                !controller.signUp;
                                            controller.update();
                                          },
                                          child: const Text(
                                            "Sign Up",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        const Text(
                                          "Back to  ? ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            controller.signUp =
                                                !controller.signUp;
                                            controller.update();
                                          },
                                          child: const Text(
                                            "Sign In",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
