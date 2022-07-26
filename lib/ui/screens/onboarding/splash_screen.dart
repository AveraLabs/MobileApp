import 'dart:async';

import 'package:avera_labs/ui/screens/onboarding/main_onboarding_screen.dart';
import 'package:avera_labs/ui/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = "splash screen route id";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.popAndPushNamed(context, MainOnboardingScreen.id);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C6164),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "AVERA LABS",
            textAlign: TextAlign.center,
            style: GoogleFonts.amiri(
              textStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                height: 28 / 28,
                color: whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
