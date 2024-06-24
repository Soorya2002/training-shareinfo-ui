import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:training/screens/assessment_screens/assessment.dart';
import 'package:training/screens/assessment_screens/leaderboard.dart';
import 'package:training/screens/assessment_screens/without_mcq.dart';
import 'package:training/widgets/assessment_widgets/course_content.dart';
import 'package:training/widgets/assessment_widgets/mcq_technical_text.dart';

class McqTechnical extends StatefulWidget {
  const McqTechnical({super.key});

  @override
  State<McqTechnical> createState() => _McqTechnicalState();
}

class _McqTechnicalState extends State<McqTechnical> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'Assessments',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LeaderboadScreen(),
                ),
              );
            },
            child: Icon(
              Symbols.social_leaderboard,
              color: Color(0xFF414ECA),
              size: 30,
            ),
          ),
          SizedBox(
            width: screenWidth * .05,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const CourseContent(
              img: 'assets/python.png',
              text1: 'Python Basics',
              texta: 'ShareInfo\t',
              textb: 'for\t',
              textc: 'CE Thalassery',
              myIconData: null,
            ),
            SizedBox(
              height: screenHeight * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AssessmentScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: screenWidth * 0.26,
                    height: screenHeight * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xffd9d9d9)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.015,
                        ),
                        Expanded(
                          child: Image.asset('assets/mcq.png',
                              fit: BoxFit.contain),
                        ),
                        SizedBox(height: screenHeight * .01),
                        Text(
                          'MCQ',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff8B8B8B),
                          ),
                        ),
                        SizedBox(height: screenHeight * .01),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WithoutMcq(),
                      ),
                    );
                  },
                  child: Container(
                    width: screenWidth * 0.26,
                    height: screenHeight * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xffd9d9d9)),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset('assets/technical.png',
                              fit: BoxFit.contain),
                        ),
                        SizedBox(height: screenHeight * .015),
                        Text(
                          'Technical',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff8B8B8B),
                          ),
                        ),
                        SizedBox(height: screenHeight * .01),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
            McqTechnicalText()
          ],
        ),
      ),
    );
  }
}
