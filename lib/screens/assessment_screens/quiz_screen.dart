import 'package:flutter/material.dart';
import 'package:training/widgets/assessment_widgets/mcq/quiz_container.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double height = screenSize.height;
    double width = screenSize.width;
    double paddingHorizontal = width * 0.045;
    double spacingVertical = height * 0.01;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
        child: SizedBox(
          width: width,
          height: height,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/heading1.png',
                    // width: width * 0.3, // Adjust width based on screen size
                  ),
                  const Spacer(),
                  Text(
                    "Quit",
                    style: TextStyle(
                      fontSize: width * 0.025,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFFF31919),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Image.asset(
                    'assets/arrow.png',
                    width: width * 0.05, // Adjust width based on screen size
                  ),
                ],
              ),
              SizedBox(height: height * 0.12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/heading2.png',
                    // width: width * 0.6, // Adjust width based on screen size
                  ),
                  Row(
                    children: [
                      Text(
                        "Title:",
                        style: TextStyle(
                          fontSize: width * 0.025,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF8B8B8B),
                        ),
                      ),
                      Text("  Python Basics",
                          style: TextStyle(
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF260446)))
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Test by:",
                        style: TextStyle(
                          fontSize: width * 0.025,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF8B8B8B),
                        ),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: '  ShareInfo',
                            style: TextStyle(
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xffEE5602),
                            ),
                          ),
                          TextSpan(
                            text: ' for ',
                            style: TextStyle(
                              fontSize: width * 0.03,
                              color: const Color(0xff8B8B8B),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'CE Thalassery',
                            style: TextStyle(
                              fontSize: width * 0.03,
                              color: const Color(0xff077BD8),
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ]),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: spacingVertical * 2,
              ),
              // const BoxRow(),
              // SizedBox(
              //   height: spacingVertical,
              // ),
              QuizContainer(
                height: height * 0.34,
                width: width,
              )
            ],
          ),
        ),
      ),
    );
  }
}
