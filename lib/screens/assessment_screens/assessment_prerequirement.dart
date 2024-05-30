import 'package:flutter/material.dart';
import 'package:training/screens/assessment_screens/assessment.dart';
import 'package:training/widgets/assessment_widgets/assessment_requirement_text.dart';
import 'package:training/widgets/button_widget.dart';
import 'package:training/screens/assessment_screens/prerequirement_content.dart';

class PrerequirementScreenB extends StatefulWidget {
  const PrerequirementScreenB({super.key});

  @override
  State<PrerequirementScreenB> createState() => _PrerequirementScreenBState();
}

class _PrerequirementScreenBState extends State<PrerequirementScreenB> {
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
                height: screenHeight * 1.2,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(102, 139, 139, 139),
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    const PreRequirementContent(
                      img: 'assets/python.png',
                      text1: 'Python Basics',
                      texta: 'ShareInfo\t',
                      textb: 'for\t',
                      textc: 'CE Thalassery',
                      myIconData: null,
                    ),
                    SizedBox(
                      height: screenHeight * .015,
                    ),
                    Container(
                      width: screenWidth * 0.8,
                      height: 1,
                      color: const Color(0xFFD9D9D9),
                    ),
                    const PrequirementTextB(),
                    SizedBox(
                      height: screenHeight * .02,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .04,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AssessmentScreen(),
                  ),
                );
              },
              child: ButtonWidget(
                text: 'Attempt Now',
                color: Color(0xFF414ECA),
              ),
            ),
            SizedBox(
              height: screenHeight * .04,
            ),
          ],
        ),
      ),
    );
  }
}
