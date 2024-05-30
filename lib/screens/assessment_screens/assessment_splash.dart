import 'package:flutter/material.dart';
import 'package:training/screens/assessment_screens/assessment_listing.dart';
import 'package:training/widgets/button_widget.dart';

class AssessmentSplashscreen extends StatefulWidget {
  const AssessmentSplashscreen({super.key});

  @override
  State<AssessmentSplashscreen> createState() =>
      _AssessmentSplashasacreenState();
}

class _AssessmentSplashasacreenState extends State<AssessmentSplashscreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * .2,
            ),
            Image.asset(
              'assets/assessment.gif',
              width: screenWidth * 0.9,
            ),
            SizedBox(
              height: screenHeight * .1,
            ),
            Container(
              width: screenWidth,
              height: screenHeight * .377,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color(0xffF5F1FF),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * .06,
                  ),
                  const Text(
                    "Why ?",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * .01,
                  ),
                  const Text(
                    "Assessments",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * .01,
                  ),
                  const Column(
                    children: [
                      Text(
                        'Assessments are like check-ups for learning. They',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF8B8B8B),
                        ),
                      ),
                      Text(
                        'show strengths, weaknesses, and areas to improve,',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF8B8B8B),
                        ),
                      ),
                      Text(
                        'guiding both students and teachers for better',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF8B8B8B),
                        ),
                      ),
                      Text(
                        'outcomes.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF8B8B8B),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * .05,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AssessmentListing(),
                        ),
                      );
                    },
                    child: const ButtonWidget(
                      text: 'GET STARTED',
                      color: Color(0xff414ECA),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
