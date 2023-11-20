import 'package:auth_ref/src/constants/colors.dart';
import 'package:auth_ref/src/constants/image_strings.dart';
import 'package:auth_ref/src/constants/sizes.dart';
import 'package:auth_ref/src/constants/text_strings.dart';
import 'package:auth_ref/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:auth_ref/src/features/authentication/screens/on_boarding/on_boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:auth_ref/src/features/authentication/models/model_on_boarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {


  @override
  Widget build(BuildContext context) {
    final oBController = OnBoardingController();

    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: oBController.pages,
            liquidController: oBController.controller,
            onPageChangeCallback: oBController.onPageChangedCallBack,
            slideIconWidget: const Icon(Icons.arrow_back),
            enableSideReveal: true,
          ),

          Positioned(
            right: 150,
            bottom: 50.0,
            child: OutlinedButton(
              onPressed: () => oBController.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20.0),
                foregroundColor: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: tDarkColor, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),

          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => oBController.skip(),
              child: const Text("Skip", style: TextStyle(color: Colors.grey),),
              ), 
          ),
          Obx( () => Positioned(right:170,bottom: 15, child: AnimatedSmoothIndicator(
              count:3,
              activeIndex: oBController.currentPage.value,
              effect: const WormEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5
              ),
            )),
          )
        ],
      ),
    );
  }
}

