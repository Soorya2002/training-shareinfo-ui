import 'package:flutter/material.dart';
import 'package:training/screens/assessment_screens/assessment.dart';
import 'package:training/widgets/button_widget.dart';

class WithoutMcq extends StatefulWidget {
  const WithoutMcq({super.key});

  @override
  State<WithoutMcq> createState() => _WithoutMcqState();
}

class _WithoutMcqState extends State<WithoutMcq> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.25,
            ),
            Image.asset('assets/assessment.gif'),
            Text(
              "Technical Assessment",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w700,
                color: Color(0xffEE5602),
              ),
            ),
            Column(
              children: [
                Text(
                  'Technical Assessments only Unlock When You',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff8B8B8B),
                  ),
                ),
                Text(
                  'Submit MCQ Rounds',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff8B8B8B),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.2,
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
                text: 'Attempt MCQ Rounds',
                color: Color(0xff414ECA),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
