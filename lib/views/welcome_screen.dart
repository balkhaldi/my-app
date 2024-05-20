import 'package:doctorapp/constants.dart';
import 'package:doctorapp/views/sign_in_screen.dart';
import 'package:doctorapp/views/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/splash_bg.svg"),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset("assets/icons/gerda_logo.svg"),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(SignUpScreen());
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFF6CD8D1),
                        ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(SignInScreen());
                        },
                        style: TextButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                            shape: const RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xFF6CD8D1)))),
                        child: const Text("Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
