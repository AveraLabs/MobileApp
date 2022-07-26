import 'package:avera_labs/ui/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({
    Key? key,
    required final TextEditingController controller,
    required final bool autoFocus,
  })  : _controller = controller,
        _autoFocus = autoFocus,
        super(key: key);
  final TextEditingController _controller;
  final bool _autoFocus;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 59,
      child: TextField(
        autofocus: _autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: _controller,
        maxLength: 1,
        style: GoogleFonts.manrope(
          textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20.00,
            height: 22 / 14,
            color: Color(0xFF18273A),
          ),
        ),
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: blackColor, width: 2),
            ),
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: blackColor, width: 2),
            ),
            focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: blackColor, width: 2),
            ),
            counterText: '',
            hintStyle: const TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
