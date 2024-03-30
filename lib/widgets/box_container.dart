import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  final String textx;
  final double width;
  final double height;
  final double swidth;
  final Color bcolor;
  final Color tcolor;
  const BoxContainer({
    super.key,
    required this.width,
    required this.height,
    required this.textx,
    required this.swidth,
    required this.bcolor,
    required this.tcolor,
  });

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              width: swidth,
            ),
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: bcolor,
                ),
              ),
              child: Center(
                child: Text(
                  textx,
                  style: TextStyle(
                    color: tcolor,
                    fontSize: 11,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
