import 'package:auth_ref/src/constants/colors.dart';
import 'package:auth_ref/src/constants/image_strings.dart';
import 'package:auth_ref/src/constants/sizes.dart';
import 'package:auth_ref/src/constants/text_strings.dart';
import 'package:auth_ref/src/features/authentication/screens/login/login_screen.dart';
import 'package:auth_ref/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: tPrimaryColor,
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(tWelcomeImage),
              // height: height*0.6,
            ),
            Column(children: [
              const Text(
                tWelcomeTitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                textAlign: TextAlign.center,
              ),
              Text(
                tWelcomeSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ]),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                      onPressed: () => Get.to(() => const LoginScreen()),
                      style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          foregroundColor: tWhiteColor,
                          side: const BorderSide(color: tWhiteColor),
                          padding: const EdgeInsets.symmetric(
                              vertical: tButtonHeight)),
                      child: Text(tLogin.toUpperCase())),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => const SingUpScreen()),
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: const RoundedRectangleBorder(),
                          foregroundColor: tWhiteColor,
                          backgroundColor: tSecondaryColor,
                          side: const BorderSide(color: tWhiteColor),
                          padding: const EdgeInsets.symmetric(
                              vertical: tButtonHeight)),
                      child: Text(tSignUp.toUpperCase())),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
