import 'package:ai_app/helper/pref.dart';
import 'package:ai_app/screen/home_screen.dart';
import 'package:ai_app/screen/onboarding_screen.dart';
import 'package:ai_app/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/global.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // wait for sometime on splashScreen and then move to next screen
    Future.delayed(const Duration(seconds: 2), () {
      // Navigator.of(context).pushReplacement(MaterialPageRoute(
      //     builder: (_) => Pref.showOnboarding
      //         ? const OnboardingScreen()
      //         : const HomeScreen()));

      Get.off(() =>
          Pref.showOnboarding ? const OnboardingScreen() : const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    //Initializing device size
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            const Spacer(flex: 2),
            Card(
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.all(mq.width * .05),
                child: Image.asset(
                  'assets/images/ai.png',
                  width: mq.width * .45,
                ),
              ),
            ),
            const Spacer(),
            const CustomLoading(),
            const Text(
              'Siddhartha!',
              style: TextStyle(
                  fontSize: 20, letterSpacing: 2, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
