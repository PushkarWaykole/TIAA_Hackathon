import 'package:auth_ref/src/constants/colors.dart';
import 'package:auth_ref/src/constants/image_strings.dart';
import 'package:auth_ref/src/constants/sizes.dart';
import 'package:auth_ref/src/constants/text_strings.dart';
import 'package:auth_ref/src/features/authentication/controllers/signup_controller.dart';
import 'package:auth_ref/src/features/authentication/screens/login/login_form_header.dart';
import 'package:auth_ref/src/features/authentication/screens/signup/signup_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode == true ? tSecondaryColor : tPrimaryColor,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              const LoginFormheader(
                  imgStr: tWelcomeImage,
                  title: tLoginTitle,
                  subtitle: tLoginSubTitle),
              Container(
                padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
                child: Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SignUpForm(),
                    const Text("OR"),
                    const SizedBox(
                      height: tFormHeight - 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        label: Text(tSignInWithGoogle.toUpperCase()),
                        icon: const Image(
                          image: AssetImage(tGoogleLogo),
                          width: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: tFormHeight - 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                            text: tAlreadyHaveAnAccount,
                            style: Theme.of(context).textTheme.bodySmall,
                            children: [
                              TextSpan(
                                  text: tLogin,
                                  style: TextStyle(color: Colors.blue[600]))
                            ]),
                      ),
                    )
                  ],
                )),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
