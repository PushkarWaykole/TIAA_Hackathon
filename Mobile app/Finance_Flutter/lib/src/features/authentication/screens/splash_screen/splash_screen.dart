import 'package:auth_ref/src/constants/colors.dart';
import 'package:auth_ref/src/constants/image_strings.dart';
import 'package:auth_ref/src/constants/sizes.dart';
import 'package:auth_ref/src/constants/text_strings.dart';
import 'package:auth_ref/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());
  bool animate = false;

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              left: splashController.animate.value ? 0 : -30,
              top: splashController.animate.value ? 0 : -30,
              child: const Image(image: AssetImage(tyellowOnboardImage)),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 80,
              left: splashController.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      tAppTagLine,
                      style: Theme.of(context).textTheme.headlineMedium,
                    )
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 100,
            child: Image(image: AssetImage(tSplashScreenImage)),
          ),
          Positioned(
            bottom: 40,
            right: tDefaultSize,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor),
            ),
          ),
        ]),
      ),
    );
  }
}
