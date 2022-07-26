import 'package:avera_labs/ui/screens/onboarding/main_onboarding_screen.dart';
import 'package:avera_labs/ui/screens/onboarding/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AveraLabsApp());
}

class AveraLabsApp extends StatelessWidget {
  const AveraLabsApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avera Labs Mobile',
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        MainOnboardingScreen.id: (context) => const MainOnboardingScreen(),
      },
    );
  }
}
