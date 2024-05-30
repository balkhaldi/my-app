import 'package:doctorapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({
    super.key,
    required this.formKey,
  });

  final GlobalKey formKey;
  late String _userName, _email, _password, _phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextFieldName(text: "UserName"),
          TextFormField(
            decoration: const InputDecoration(hintText: "BashayerAlk28"),
            validator: (value){if(value!.isEmail)return '';},

            onSaved: (username) => _userName = username!,
          ),
          const SizedBox(height: defaultPadding),
          const TextFieldName(text: "Email"),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(hintText: "test@gmail.com"),
            onSaved: (email) => _email = email!,
          ),
          const SizedBox(height: defaultPadding),
          const TextFieldName(text: "Phone"),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(hintText: "+123456789"),
            onSaved: (phoneNumber) => _phoneNumber = phoneNumber!,
          ),
          const SizedBox(height: defaultPadding),
          const TextFieldName(text: "Password"),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(hintText: "*********"),
          ),
          const SizedBox(height: defaultPadding),
          const TextFieldName(text: "Confirm Password"),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(hintText: "*********"),
            onSaved: (password) => _password = password!,
            onChanged: (pass) => _password = pass,
          ),
        ],
      ),
    );
  }
}

class TextFieldName extends StatelessWidget {
  const TextFieldName({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 3),
      child: Text(
        text,
        style:
            const TextStyle(fontWeight: FontWeight.w600, color: Colors.black54),
      ),
    );
  }
}
