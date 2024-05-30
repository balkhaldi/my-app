import 'package:doctorapp/color.dart';
import 'package:doctorapp/constants.dart';
import 'package:doctorapp/views/sign_in_screen.dart';
import 'package:doctorapp/views/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue5,
      body: Stack(
        fit: StackFit.expand,
        children: [

          Image.asset('assets/images/logo_hospital.png' ,fit: BoxFit.contain ,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  const Spacer(),

                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(SignUpScreen());
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: blue3,
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: blue6  , fontWeight: FontWeight.bold , fontSize: 16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(SignInScreen());
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xff64EBB6),
                            ),
                            child: const Text(
                              "Sign In",
                              style: TextStyle(color:blue6  , fontWeight: FontWeight.bold , fontSize: 16),
                            ),
                          ),
                        ),

                  /*  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(SignInScreen());
                        },
                        style: TextButton.styleFrom(
                          elevation: 0,
                          backgroundColor: blue3,
                          shape: const RoundedRectangleBorder(side: BorderSide(color: Color(0xFF6CD8D1))),
                        ),
                        child: const Text("Sign In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),*/
                  ]),
            ),
          ]),
            )
      ),
    ]),
    );


  }
}