import 'package:flutter/material.dart';
import 'package:training/widgets/assessment_widgets/mcq/option_click.dart';

class SelectOption extends StatelessWidget {
  const SelectOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 19,
        ),
        Text(
          "Mark Your Answers",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color(0xFFEE5602),
          ),
        ),
        SizedBox(
          height: 19,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ColorChangingButton(text: 'A'),
            ColorChangingButton(text: 'B'),
            ColorChangingButton(text: 'C'),
            ColorChangingButton(text: 'D'),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Skip this Question!",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFF8B8B8B),
              decoration: TextDecoration.underline),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Should Mark one ",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF8B8B8B),
              ),
            ),
            Text(
              "Answer ",
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF8B8B8B),
                  decoration: TextDecoration.underline),
            ),
            Text(
              "or ",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF8B8B8B),
              ),
            ),
            Text(
              "Skip ",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF8B8B8B),
                  decoration: TextDecoration.underline),
            ),
            Text(
              "to Continue",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF8B8B8B),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
