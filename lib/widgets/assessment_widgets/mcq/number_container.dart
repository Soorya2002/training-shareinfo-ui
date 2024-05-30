import 'package:flutter/material.dart';

class NumberContainer extends StatelessWidget {
  final String text;
  final double width, height;
  final Color color;
  const NumberContainer(
      {super.key,
      required this.text,
      required this.height,
      required this.width,
      this.color = const Color(0xFFEE5602)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: const Color(0xFFEE5602),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
      ),
    );
  }
}
