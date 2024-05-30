import 'package:flutter/material.dart';
import 'package:training/widgets/assessment_widgets/mcq/number_container.dart';

class BoxRow extends StatelessWidget {
  final int number;
  const BoxRow({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NumberContainer(
          text: 'Q$number',
          height: 30,
          width: 30,
        ),
        const SizedBox(
          width: 5,
        ),
        const NumberContainer(
          text: "00:59",
          height: 30,
          width: 40,
        ),
        const Spacer(),
        NumberContainer(
          text: "Q$number/25",
          height: 30,
          width: 85,
          color: const Color(0xFF414ECA),
        ),
      ],
    );
  }
}
