import 'package:avera_labs/ui/screens/authentication/components/register/otp_verification.dart';
import 'package:avera_labs/ui/screens/main_page_navigation/main_page_navigator.dart';
import 'package:avera_labs/ui/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/countries.dart';

class EmailEntryScreen extends StatefulWidget {
  const EmailEntryScreen({Key? key}) : super(key: key);

  @override
  State<EmailEntryScreen> createState() => _EmailEntryScreenState();
}

class _EmailEntryScreenState extends State<EmailEntryScreen> {
  final TextEditingController _phoneNumberTextController =
      TextEditingController();

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
              builder: (context) => MainPage(),
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
              "What's your email?",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: blackColor),
              ),
            ),
            Text(
              "We'll send a registration confirmation link to your email",
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
                  child: SizedBox(
                    height: 42,
                    child: TextField(
                      controller: _phoneNumberTextController,
                      maxLength: 9,
                      keyboardType: TextInputType.phone,
                      style: GoogleFonts.manrope(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.00,
                          height: 22 / 14,
                          color: Color(0xFF18273A),
                        ),
                      ),
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      autocorrect: false,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 16.0),
                        hintText: "Email",
                        counterText: '',
                        hintStyle: GoogleFonts.manrope(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            height: 16.39 / 14,
                            color: const Color(0xFFC0C0C0).withOpacity(0.94),
                          ),
                        ),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 16.0),
                          child: Icon(Icons.email_outlined),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(5),
                            left: Radius.circular(0),
                          ),
                          borderSide:
                              BorderSide(color: Color(0xFFE5E7EB), width: 0.9),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(5),
                            left: Radius.circular(0),
                          ),
                          borderSide:
                              BorderSide(color: Color(0xFFE5E7EB), width: 0.9),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(5),
                            left: Radius.circular(0),
                          ),
                          borderSide:
                              BorderSide(color: Color(0xFFE5E7EB), width: 0.9),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
