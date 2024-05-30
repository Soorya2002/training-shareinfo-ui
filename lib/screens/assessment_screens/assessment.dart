import 'package:flutter/material.dart';
import 'package:training/screens/assessment_screens/instructionscreen.dart';
import 'package:training/widgets/assessment_widgets/assessmentscreen_content.dart';
import 'package:training/widgets/assessment_widgets/assessmentscreen_text.dart';
import 'package:training/widgets/button_widget.dart';

class AssessmentScreen extends StatefulWidget {
  const AssessmentScreen({super.key});

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text('Assessments'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * .03,
            ),
            Center(
              child: Container(
                width: screenWidth * 0.9,
                height: screenHeight * .84,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(102, 139, 139, 139),
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    const AssessmentScreenContent(
                      img: 'assets/python.png',
                      text1: 'Python Basics',
                      text2: 'Dr. Subhash || IIT Madras',
                      texta: 'ShareInfo\t',
                      textb: 'for\t',
                      textc: 'CE Thalassery',
                      date: '07 Mar 2024; Thursday',
                    ),
                    SizedBox(
                      height: screenHeight * .02,
                    ),
                    AssessmentScreenText(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .05,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InstructionScreen(),
                  ),
                );
              },
              child: ButtonWidget(
                text: 'Attempt Now',
                color: Color(0xFF414ECA),
              ),
            ),
            SizedBox(
              height: screenHeight * .03,
            ),
          ],
        ),
      ),
    );
  }
}
