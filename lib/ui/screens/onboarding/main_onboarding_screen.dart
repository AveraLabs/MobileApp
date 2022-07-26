import 'package:avera_labs/ui/screens/authentication/components/register/phone_number.dart';
import 'package:avera_labs/ui/screens/onboarding/onboarding_screen_component-1.dart';
import 'package:avera_labs/ui/screens/onboarding/onboarding_screen_component-2.dart';
import 'package:avera_labs/ui/screens/onboarding/onboarding_screen_component-3.dart';
import 'package:avera_labs/ui/screens/onboarding/onboarding_screen_component-4.dart';
import 'package:avera_labs/ui/shared/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class MainOnboardingScreen extends StatefulWidget {
  const MainOnboardingScreen({Key? key}) : super(key: key);
  static const String id = "man onboarding screen route id";
  @override
  State<MainOnboardingScreen> createState() => _MainOnboardingScreenState();
}

class _MainOnboardingScreenState extends State<MainOnboardingScreen> {
  // int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  List<Widget> onboardingViewList = [
    const OnboardingComponent1(),
    const OnboardingComponent2(),
    const OnboardingComponent3(),
    const OnboardingComponent4(),
  ];
  @override
  void initState() {
    super.initState();
  }

  nextFunction() {
    _pageController.nextPage(
        duration: const Duration(microseconds: 300), curve: Curves.easeIn);
  }
  //
  // _onPageChanged(int index) {
  //   setState(() {
  //     _currentPage = index;
  //   });
  // }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    "AVERA LABS",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.amiri(
                      textStyle: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        height: 28 / 28,
                      ),
                    ),
                  ),
                  Text(
                    "Confidential Testing",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        height: 1,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: CustomButton(
                      color: const Color(0xFF0C6164),
                      width: double.infinity,
                      height: 50,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const PhoneNumberEntryScreen(),
                          ),
                        );
                      },
                      radius: 30,
                      label: Text(
                        "CREATE ACCOUNT",
                        style: GoogleFonts.sora(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                            height: 20 / 12,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(16),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Already have an account? ",
                      style: GoogleFonts.sora(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          height: 19.12 / 14,
                          color: Colors.black,
                        ),
                      ),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const PhoneNumberEntryScreen(),
                                ),
                              );
                            },
                          text: " Sign in",
                          style: GoogleFonts.sora(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                              height: 19.12 / 14,
                              color: Color(0xFF0C6164),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Gap(20)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
