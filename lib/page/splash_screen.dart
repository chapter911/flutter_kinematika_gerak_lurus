import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/helper/sharedpreferences.dart';
import 'package:kinematika_gerak_lurus/page/soal1/soal1.dart';
import 'package:kinematika_gerak_lurus/page/soal2/soal2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Prefs().clearData();
    Future.delayed(const Duration(seconds: 2)).then(
      (value) => Get.offAll(() => const Soal2()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Image.asset('assets/splash_screen.jpg', fit: BoxFit.cover),
          const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "KINEMATIKA\nGERAK LURUS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: LinearProgressIndicator(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
