import 'package:flutter/material.dart';
import 'package:training/screens/assessment_screens/quiz_screen.dart';
import 'package:training/screens/assessment_screens/success.dart';
import 'package:training/widgets/button_widget.dart';
import 'package:training/widgets/assessment_widgets/instruction_text.dart';

class InstructionScreen extends StatefulWidget {
  const InstructionScreen({super.key});

  @override
  State<InstructionScreen> createState() => _InstructionScreenState();
}

class _InstructionScreenState extends State<InstructionScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * .04,
              ),
              Image.asset(
                'assets/instruction.gif',
                width: screenWidth * .85,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth * .28,
                  ),
                  const Text(
                    "ShareInfo",
                    style: TextStyle(
                      color: Color(0xFFF9772E),
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [Color(0xFFDA4ED5), Color(0xFFFF3288)],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                  ).createShader(bounds);
                },
                child: const Text(
                  'Assessments',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      height: 1),
                ),
              ),
              SizedBox(
                height: screenHeight * .01,
              ),
              const Text(
                "Instructions to ShareInfo Assessments*",
                style: TextStyle(
                  color: Color(0xFFF9772E),
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const InstructionText(),
              SizedBox(
                height: screenHeight * .04,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizScreen(),
                      ),
                    );
                  },
                  child: const ButtonWidget(
                      text: 'Start Now', color: Color(0xFF414ECA))),
              SizedBox(
                height: screenHeight * .02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
