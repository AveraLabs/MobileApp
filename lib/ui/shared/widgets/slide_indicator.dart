import 'package:flutter/material.dart';

class SlideIndicator extends StatelessWidget {
  final bool isActive;
  const SlideIndicator({Key? key, required this.isActive}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: 9,
      height: 9,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(50.0),
        ),
        color: isActive ? const Color(0xFF0C6164) : const Color(0xFF969898),
      ),
    );
  }
}
