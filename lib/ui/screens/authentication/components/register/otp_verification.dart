import 'package:avera_labs/ui/screens/authentication/components/register/name.dart';
import 'package:avera_labs/ui/shared/constants.dart';
import 'package:avera_labs/ui/shared/widgets/otp_inputfield.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/countries.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  Countries allCountries = Countries();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.1,
        iconTheme: IconThemeData(color: blackColor),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NameEntryScreen(),
            ),
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What's the code?",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: blackColor),
              ),
            ),
            Text(
              "Enter the code sent to +233 50 239 2884",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              ),
            ),
            const Gap(16),
            Row(
              children: [
                Expanded(
                  child: OtpInput(
                      controller: TextEditingController(), autoFocus: true),
                ),
                Expanded(
                  child: OtpInput(
                      controller: TextEditingController(), autoFocus: true),
                ),
                Expanded(
                  child: OtpInput(
                      controller: TextEditingController(), autoFocus: true),
                ),
                Expanded(
                  child: OtpInput(
                      controller: TextEditingController(), autoFocus: true),
                ),
                Expanded(
                  child: OtpInput(
                      controller: TextEditingController(), autoFocus: true),
                ),
                Expanded(
                  child: OtpInput(
                      controller: TextEditingController(), autoFocus: true),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
