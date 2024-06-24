import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:training/screens/assessment_screens/technical_screen.dart';
import 'package:training/widgets/assessment_widgets/assessmentbox_container.dart';
import 'package:training/widgets/assessment_widgets/assessmentscreen_text.dart';
import 'package:training/widgets/assessment_widgets/course_content.dart';
import 'package:training/widgets/button_widget.dart';

class TechnicalAssessment extends StatefulWidget {
  const TechnicalAssessment({super.key});

  @override
  State<TechnicalAssessment> createState() => _TechnicalAssessmentState();
}

class _TechnicalAssessmentState extends State<TechnicalAssessment> {
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
        title: const Text('Assessments (Technical)'),
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
                    CourseContent(
                      img: 'assets/python.png',
                      text1: 'Python Basics',
                      texta: 'ShareInfo\t',
                      textb: 'for\t',
                      textc: 'CE Thalassery',
                      myIconData: Symbols.notification_add,
                    ),
                    SizedBox(
                      height: screenHeight * .01,
                    ),
                    Container(
                      width: screenWidth * 0.8,
                      height: screenHeight * 0.001,
                      color: const Color(0xFFD9D9D9),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: screenWidth * .055,
                        ),
                        Text(
                          'Dr. Subhash || IIT Madras',
                          style: TextStyle(
                            color: Color(0xFF8B8B8B),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * .075,
                        ),
                        Text(
                          '07 Mar 2024; Thursday',
                          style: TextStyle(
                            color: Color(0xFFF31919),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: screenWidth * .055,
                        ),
                        BoxContainer(
                          width: screenWidth * 0.2,
                          height: screenHeight * 0.035,
                          textx: 'Technical Test',
                          bcolor: Color(0xffEE5602),
                          tcolor: Color(0xffEE5602),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: screenWidth * .055,
                        ),
                        BoxContainer(
                          width: screenWidth * 0.75,
                          height: screenHeight * 0.035,
                          textx:
                              'ShareInfo for Learn Assessment Ends on: 19 Mar 2024',
                          bcolor: Color(0xffEE5602),
                          tcolor: Color(0xffEE5602),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * .02,
                    ),
                    AssessmentScreenText()
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
                    builder: (context) => TechnicalScreen(),
                  ),
                );
              },
              child: ButtonWidget(
                text: 'Attempt Now',
                color: Color(0xFF414ECA),
              ),
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
          ],
        ),
      ),
    );
  }
}
