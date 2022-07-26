import 'package:avera_labs/ui/screens/authentication/components/register/otp_verification.dart';
import 'package:avera_labs/ui/shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../../../utils/countries.dart';
import '../../../../shared/widgets/custom_country_picker.dart';

class PhoneNumberEntryScreen extends StatefulWidget {
  const PhoneNumberEntryScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberEntryScreen> createState() => _PhoneNumberEntryScreenState();
}

class _PhoneNumberEntryScreenState extends State<PhoneNumberEntryScreen> {
  final TextEditingController _phoneNumberTextController =
      TextEditingController();
  String _countryCode = "+233";

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
              builder: (context) => const OTPVerificationScreen(),
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
              "What's your number?",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: blackColor),
              ),
            ),
            Text(
              "We'll text a code to verify your phone",
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
                SizedBox(
                  height: 42,
                  width: 80.0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(8.0)),
                      border: Border.all(
                        color: const Color(0xFFE5E7EB),
                      ),
                    ),
                    child: InkWell(
                      onTap: () async {
                        _countryCode = await showCupertinoModalBottomSheet(
                            expand: true,
                            isDismissible: false,
                            context: context,
                            backgroundColor: Colors.teal.withOpacity(0.0),
                            builder: (context) => CustomCountryPicker(
                                  countyCode: _countryCode,
                                ));
                        setState(() {});
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            allCountries.countries.singleWhere((element) =>
                                element['code'] == _countryCode)['flag'],
                            height: 20,
                            width: 26,
                            fit: BoxFit.fill,
                          ),
                          const Icon(
                            CupertinoIcons.chevron_down,
                            size: 16,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
                        hintText: "Mobile Number",
                        counterText: '',
                        hintStyle: GoogleFonts.manrope(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            height: 16.39 / 14,
                            color: const Color(0xFFC0C0C0).withOpacity(0.94),
                          ),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 16.0),
                          child: Text(
                            _countryCode,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.manrope(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                                height: 16.39 / 14,
                                color:
                                    const Color(0xFF18273A).withOpacity(0.94),
                              ),
                            ),
                          ),
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
