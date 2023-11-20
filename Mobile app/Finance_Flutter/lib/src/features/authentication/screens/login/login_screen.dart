import 'package:auth_ref/src/constants/colors.dart';
import 'package:auth_ref/src/constants/image_strings.dart';
import 'package:auth_ref/src/constants/sizes.dart';
import 'package:auth_ref/src/constants/text_strings.dart';
import 'package:auth_ref/src/features/authentication/screens/login/login_form.dart';
import 'package:auth_ref/src/features/authentication/screens/login/login_form_footer.dart';
import 'package:auth_ref/src/features/authentication/screens/login/login_form_header.dart';
import 'package:flutter/material.dart';
import 'package:auth_ref/src/utils/outlined_button_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: tPrimaryColor,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: const Column(
                // Section 1 - Img n the text title and subtitle.
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LoginFormheader(imgStr:tWelcomeImage,title: tLoginTitle,subtitle: tLoginSubTitle),

                  // Section 2 - TextFields reg. the login email and password.
                  LoginForm(),
                  // Final section or N google sign in
                  LoginFormFooter()
                ]),
          ),
        ),
      ),
    );
  }
}