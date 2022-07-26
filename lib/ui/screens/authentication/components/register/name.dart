import 'package:avera_labs/ui/screens/authentication/components/register/email.dart';
import 'package:avera_labs/ui/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/countries.dart';

class NameEntryScreen extends StatefulWidget {
  const NameEntryScreen({Key? key}) : super(key: key);

  @override
  State<NameEntryScreen> createState() => _NameEntryScreenState();
}

class _NameEntryScreenState extends State<NameEntryScreen> {
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
              builder: (context) => const EmailEntryScreen(),
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
              "What's your name?",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: blackColor),
              ),
            ),
            Text(
              "Let's give to know you more",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              ),
            ),
            const Gap(16),
            Container(
              height: 42,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB), width: 0.9),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: const [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                    child: Icon(
                      Icons.person_outlined,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                          hintText: "First name"),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                          hintText: "Last name"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
