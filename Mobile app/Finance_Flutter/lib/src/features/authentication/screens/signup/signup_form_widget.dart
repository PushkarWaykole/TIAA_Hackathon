import 'package:auth_ref/src/constants/text_strings.dart';
import 'package:auth_ref/src/features/authentication/controllers/signup_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formkey = GlobalKey<FormState>();
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            controller: controller.fullName,
            decoration: const InputDecoration(
                label: Text("FullName"),
                prefixIcon: Icon(Icons.person_outline_outlined)),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: controller.email,
            decoration: const InputDecoration(
                label: Text(tEmail), prefixIcon: Icon(Icons.email)),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: controller.password,
            decoration: const InputDecoration(
                label: Text(tPassword), prefixIcon: Icon(Icons.fingerprint)),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: controller.phoneNo,
            decoration: const InputDecoration(
                label: Text("Phone No."), prefixIcon: Icon(Icons.phone)),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Button pressed');
                    }
                    if (_formkey.currentState!.validate()) {
                      SignUpController.instance.registerUser(
                          controller.email.text.trim(),
                          controller.password.text.trim());
                    }
                  },
                  child: Text(tSignUp.toUpperCase()))),
        ],
      ),
    );
  }
}
