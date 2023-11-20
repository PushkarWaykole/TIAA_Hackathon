import 'package:auth_ref/src/constants/colors.dart';
import 'package:auth_ref/src/constants/image_strings.dart';
import 'package:auth_ref/src/constants/text_strings.dart';
import 'package:auth_ref/src/features/authentication/models/model_on_boarding.dart';
import 'package:auth_ref/src/features/authentication/screens/on_boarding/on_boarding_page.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  
  final pages = [
    OnBoardingPage(
      model: OnBoardModel(
          image: tOnboardingImage1,
          title: tOnboardingTitle1,
          subtitle: tOnboardingSubTitle1,
          counterText: tOnboardingCounter1,
          bgColor: tOnBoardingPage1Color,),
    ),
    OnBoardingPage(
      model: OnBoardModel(
          image: tOnboardingImage2,
          title: tOnboardingTitle2,
          subtitle: tOnboardingSubTitle2,
          counterText: tOnboardingCounter2,
          bgColor: tOnBoardingPage2Color,),
    ),
    OnBoardingPage(
      model: OnBoardModel(
          image: tOnboardingImage3,
          title: tOnboardingTitle3,
          subtitle: tOnboardingSubTitle3,
          counterText: tOnboardingCounter3,
          bgColor: tOnBoardingPage3Color,),
    ),
  ];

  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
  void onPageChangedCallBack(int activePageIndex) => currentPage.value = activePageIndex;
}