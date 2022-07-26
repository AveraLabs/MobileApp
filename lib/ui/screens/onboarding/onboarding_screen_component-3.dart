import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingComponent3 extends StatelessWidget {
  const OnboardingComponent3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/onboarding/approved.png"),
        Text(
          "Prove and Verify Status",
          style: GoogleFonts.sora(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 15,
              height: 28 / 15.0,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Text(
            "Easily verify your status directly from your secured mobile application.",
            textAlign: TextAlign.center,
            style: GoogleFonts.sora(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                height: 15 / 12,
                color: Color(0xFF282626),
              ),
            ),
          ),
        )
      ],
    );
  }
}
