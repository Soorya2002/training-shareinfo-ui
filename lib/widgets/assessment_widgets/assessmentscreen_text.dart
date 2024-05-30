import 'package:flutter/material.dart';

class AssessmentScreenText extends StatefulWidget {
  const AssessmentScreenText({super.key});

  @override
  State<AssessmentScreenText> createState() => _AssessmentScreenTextState();
}

class _AssessmentScreenTextState extends State<AssessmentScreenText> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: screenWidth * .055,
            ),
            const Text(
              "Instructions to ShareInfo Assessments*",
              style: TextStyle(
                color: Color(0xFFEE5602),
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * .005,
        ),
        Row(
          children: [
            SizedBox(
              width: screenWidth * .055,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'MCQ (Multiple Choice Question): ',
                    style: TextStyle(
                      fontSize: 11.5,
                      color: Color(0xFF8B8B8B),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text:
                        'This is a type of question\nwhere you\'re given a statement or problem and presented with\nseveral answer options. You choose the single answer that you\nbelieve is the most correct. MCQ tests are popular because they\nare easy to grade and can assess a wide range of knowledge.',
                    style: TextStyle(
                      fontSize: 11.5,
                      color: Color(0xFF8B8B8B),
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: screenWidth * .055,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Aptitude: ',
                    style: TextStyle(
                      fontSize: 11.5,
                      color: Color(0xFF8B8B8B),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text:
                        'In the context of exams, aptitude refers to your \nnatural ability or potential for success in a particular area. \nAptitude tests are designed to measure your skills in areas like \nreasoning, problem-solving, critical thinking, and data analysis. \nThese skills are applicable across many different fields.',
                    style: TextStyle(
                      fontSize: 11.5,
                      color: Color(0xFF8B8B8B),
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: screenWidth * .055,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Technical: ',
                    style: TextStyle(
                      fontSize: 11.5,
                      color: Color(0xFF8B8B8B),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Technical questions are specific to a particular field \nor technology. They assess your knowledge and understanding \nof concepts, tools, and practices relevant to that field. For \ninstance, a software developer job might include technical \nquestions about programming languages, algorithms, or \nsoftware design. Aptitude tests are designed to measure your \nskills in areas like reasoning, problem-solving, critical thinking, \nand data analysis. These skills are applicable across many \ndifferent fields. ',
                    style: TextStyle(
                      fontSize: 11.5,
                      color: Color(0xFF8B8B8B),
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: screenWidth * .055,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Technical: ',
                    style: TextStyle(
                      fontSize: 11.5,
                      color: Color(0xFF8B8B8B),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Technical questions are specific to a particular field \nor technology. They assess your knowledge and understanding \nof concepts, tools, and practices relevant to that field. For \ninstance, a software developer job.',
                    style: TextStyle(
                      fontSize: 11.5,
                      color: Color(0xFF8B8B8B),
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: screenWidth * .055,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Technical: ',
                    style: TextStyle(
                      fontSize: 11.5,
                      color: Color(0xFF8B8B8B),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Technical questions are specific to a particular field \nor technology. They assess your knowledge and understanding \nof concepts, tools, and practices relevant to that field. For \ninstance, a software developer job.',
                    style: TextStyle(
                      fontSize: 11.5,
                      color: Color(0xFF8B8B8B),
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
