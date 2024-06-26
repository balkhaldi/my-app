import 'package:doctorapp/color.dart';
import 'package:doctorapp/constants.dart';
import 'package:doctorapp/model/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SignUpScreen extends StatelessWidget {
  // It's time to validat the text field
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // But still same problem, let's fixed it
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/Sign_Up_bg.svg",
            height: MediaQuery.of(context).size.height,
            // Now it takes 100% of our height
          ),
          Center(
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Account",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        const Text("Already have an account?"),
                        TextButton(
                          onPressed: () {},

                          child: Text(
                            "Sign In!",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding * 2),
                    SignUpForm(formKey: _formKey),
                    const SizedBox(height: defaultPadding * 2),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Sign up form is done
                            // It saved our inputs
                            _formKey.currentState!.save();
                          }
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(blue3)),
                        child: Text("Sign Up" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}