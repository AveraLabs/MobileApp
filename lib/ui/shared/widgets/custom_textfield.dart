import 'package:flutter/material.dart';

import '../textstyles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required String textFieldLabel,
    required TextEditingController emailTextController,
    required final bool isReadOnly,
    final Widget? widget,
    final TextInputType? keyboardType,
    String? hintText,
  })  : _textFieldLabel = textFieldLabel,
        _emailTextController = emailTextController,
        _isReadOnly = isReadOnly,
        _widget = widget,
        _hintText = hintText,
        super(key: key);

  final TextEditingController _emailTextController;
  final String _textFieldLabel;
  final bool _isReadOnly;
  final Widget? _widget;
  final String? _hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16 / 3),
          child: Text(
            _textFieldLabel,
            style: label,
          ),
        ),
        SizedBox(
          height: 52,
          child: TextFormField(
            style: inputTextStyle,
            readOnly: _isReadOnly,
            controller: _emailTextController,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              filled: true,
              suffixIcon: _widget,
              hintText: _hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                // borderSide: const BorderSide(color: Colors.black, width: 0.9),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
