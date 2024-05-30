import 'package:flutter/material.dart';

class OptionContainer extends StatelessWidget {
  final String text;
  const OptionContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Container(
            height: 32,
            // width: width,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: const Color(0xFF414ECA),
              ),
            ),
            child: Center(
              child: Text('  $text  ',
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF414ECA),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
