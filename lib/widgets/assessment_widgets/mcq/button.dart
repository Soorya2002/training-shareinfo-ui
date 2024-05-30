import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // final Color color;
  final String text;
  // final double height;
  // final double width;
  const Button({
    super.key,
    // this.color = const Color(0xFF8B8B8B),
    required this.text,
    required this.onTap,
    // required this.width
  });
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenSize.width * .9,
        height: screenSize.height * .065,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFF414ECA)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
