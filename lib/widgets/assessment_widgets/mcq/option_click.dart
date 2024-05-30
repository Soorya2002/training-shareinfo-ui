import 'package:flutter/material.dart';

class ColorChangingButton extends StatefulWidget {
  final String text;

  const ColorChangingButton({super.key, required this.text});

  @override

  // ignore: library_private_types_in_public_api
  _ColorChangingButtonState createState() => _ColorChangingButtonState();
}

class _ColorChangingButtonState extends State<ColorChangingButton> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Container(
        height: 33,
        width: 33,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: isClicked ? Colors.blue : const Color(0xFF8B8B8B),
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: isClicked ? Colors.blue : const Color(0xFF8B8B8B),
            ),
          ),
        ),
      ),
    );
  }
}
