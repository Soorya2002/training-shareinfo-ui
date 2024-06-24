import 'package:flutter/material.dart';
import 'package:training/screens/assessment_screens/submit_screen.dart';
import 'package:training/widgets/button_widget.dart'; // Make sure this import is correct based on your project structure

class TechnicalContainer extends StatefulWidget {
  const TechnicalContainer({super.key});

  @override
  State<TechnicalContainer> createState() => _TechnicalContainerState();
}

class _TechnicalContainerState extends State<TechnicalContainer> {
  int currentQuestion = 1;

  void _nextQuestion() {
    setState(() {
      if (currentQuestion < 25) {
        currentQuestion++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: screenHeight * .015,
                ),
                Center(
                  child: Container(
                    width: screenWidth * .9,
                    height: screenHeight * .08,
                    decoration: const BoxDecoration(
                      color: Color(0xffDADEFF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth * .15,
                          height: screenHeight * .04,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff414ECA),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'main.py',
                              style: TextStyle(
                                color: Color(0xff414ECA),
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth * .15,
                          height: screenHeight * .04,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff8B8B8B80),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'output',
                              style: TextStyle(
                                color: Color(0xff8B8B8B80),
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * .9,
                  height: screenHeight * .36,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 235, 233, 233),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenHeight * .01,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\t\t1\t',
                              style: TextStyle(
                                color: Color(0xff414ECA),
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: '\t#Code Here',
                              style: TextStyle(
                                color: Color(0xff34A853),
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .01,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenWidth * .06,
                          ),
                          const Text(
                            'print("Hey shareInfo")',
                            style: TextStyle(
                              color: Color(0xff414ECA),
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: GestureDetector(
                onTap: _nextQuestion,
                child: Container(
                  width: screenWidth * .17,
                  height: screenHeight * .035,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff414ECA),
                  ),
                  child: const Center(
                    child: Text(
                      'Run',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Should Mark one Answer or Skip to Continue",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Color(0xFF8B8B8B),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: _nextQuestion,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubmitScreen(),
                ),
              );
            },
            child: ButtonWidget(
              text: 'Next Question',
              color: const Color(0xFF414ECA),
            ),
          ),
        ),
      ],
    );
  }
}
