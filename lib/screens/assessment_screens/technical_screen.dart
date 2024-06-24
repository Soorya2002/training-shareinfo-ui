import 'package:flutter/material.dart';
import 'package:training/widgets/assessment_widgets/assessmentbox_container.dart';
import 'package:training/widgets/assessment_widgets/technical_container.dart';

class TechnicalScreen extends StatefulWidget {
  const TechnicalScreen({super.key});

  @override
  State<TechnicalScreen> createState() => _TechnicalScreenState();
}

class _TechnicalScreenState extends State<TechnicalScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double paddingHorizontal = screenWidth * 0.045;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/heading1.png',
                ),
                const Spacer(),
                Text(
                  "Quit",
                  style: TextStyle(
                    fontSize: screenWidth * 0.025,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFFF31919),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.01,
                ),
                Image.asset(
                  'assets/arrow.png',
                  width: screenWidth * 0.05,
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .06,
            ),
            Row(
              children: [
                Row(
                  children: [
                    BoxContainer(
                      width: screenWidth * .1,
                      height: screenHeight * .034,
                      textx: 'Q1',
                      bcolor: const Color(0xffEE5602),
                      tcolor: const Color(0xffEE5602),
                    ),
                    SizedBox(
                      width: screenWidth * .01,
                    ),
                    BoxContainer(
                      width: screenWidth * .15,
                      height: screenHeight * .034,
                      textx: '04:59',
                      bcolor: const Color(0xffEE5602),
                      tcolor: const Color(0xffEE5602),
                    ),
                  ],
                ),
                const Spacer(),
                BoxContainer(
                  width: screenWidth * .25,
                  height: screenHeight * .034,
                  textx: 'Q1/25',
                  bcolor: const Color(0xffEE5602),
                  tcolor: const Color(0xff414ECA),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Write a Python program that calculates the area of a \nrectangle. The program should:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffEE5602),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .015,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '1. Prompt the user to enter the rectangle\'s width and \nheight (as integers). \n2. Calculate the area (width multiplied by height). \n3. Print the calculated area to the console with an \nappropriate message.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff8B8B8B),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
            TechnicalContainer(),
          ],
        ),
      ),
    );
  }
}
