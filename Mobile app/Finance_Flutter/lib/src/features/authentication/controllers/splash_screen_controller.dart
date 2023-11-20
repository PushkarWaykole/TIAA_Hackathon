import 'package:auth_ref/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:auth_ref/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 600));
    animate.value = true ;
    await Future.delayed(const Duration(milliseconds: 5000));   
    Get.to(const WelcomeScreen());
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));

  }
}