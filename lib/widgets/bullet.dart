import 'package:flutter/material.dart';

class Bullet extends StatelessWidget {
  final double bsize;
  final double width;
  final double height;
  final double size;
  final String text;
  final Color color;
  final FontWeight fontWeight;

  const Bullet({
    super.key,
    this.bsize = 4,
    this.width = 17,
    this.height = 0,
    this.size = 11,
    this.color = const Color(0xFF8B8B8B),
    required this.text,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 3,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 4,
                ),
                Container(
                  width: bsize,
                  height: bsize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: size,
                color: color,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
        SizedBox(
          height: height,
        )
      ],
    );
  }
}
