import 'package:flutter/material.dart';
import 'package:training/screens/assessment_screens/assessment_splash.dart';
import 'package:training/screens/training_screens/training_screen.dart';
import 'package:training/widgets/button_widget.dart';

class AssessmentDetailedScreen extends StatefulWidget {
  const AssessmentDetailedScreen({super.key});

  @override
  State<AssessmentDetailedScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentDetailedScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * .3,
                  ),
                  Image.asset(
                    'assets/assessment.gif',
                    width: screenWidth * 0.9,
                  ),
                  SizedBox(
                    height: screenHeight * .02,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'ShareInfo Assessments',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Color(0xFFEE5602),
                        ),
                      ),
                      const Text(
                        'are only available when your institution publishes them out,',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF260446),
                        ),
                      ),
                      const Text(
                        'We’ll Notify You !',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Color(0xFF260446),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .17,
                      ),
                      const Text(
                        "Need Help? Talk to Us !",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF8B8B8B),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TrainingScreen(),
                            ),
                          );
                        },
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AssessmentSplashscreen(),
                              ),
                            );
                          },
                          child: const ButtonWidget(
                            text: 'Return to Home !',
                            color: Color(0xFF414ECA),
                          ),
                        ),
                      ),
                    ],
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
