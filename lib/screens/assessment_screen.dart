import 'package:flutter/material.dart';
import 'package:training/screens/training_screen.dart';
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
                        child: const ButtonWidget(
                          text: 'Return to Home !',
                          color: Color(0xFF414ECA),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //     Stack(
            //       alignment: Alignment.center,
            //       children: [
            //         Positioned(
            //           child: Image.asset(
            //             'assets/assessment.gif',
            //             width: screenWidth * 0.8,
            //             height: screenHeight * 0.8,
            //           ),
            //         ),
            //         const Positioned(
            //           top: 530,
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Text(
            //                 'ShareInfo Assessments',
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.w600,
            //                   fontSize: 12,
            //                   color: Color(0xFFEE5602),
            //                 ),
            //               ),
            //               Text(
            //                 'are only available when your institution publishes them out,',
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                   fontWeight: FontWeight.w500,
            //                   color: Color(0xFF260446),
            //                 ),
            //               ),
            //               Text(
            //                 'We’ll Notify You !',
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.w700,
            //                   fontSize: 15,
            //                   color: Color(0xFF260446),
            //                 ),
            //               ),

            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //     const SizedBox(
            //       height: 50,
            //     ),
            //     const Text(
            //       "Need Help? Talk to Us !",
            //       style: TextStyle(
            //         fontSize: 10,
            //         fontWeight: FontWeight.w600,
            //         color: Color(0xFF8B8B8B),
            //       ),
            //     ),
            //     const SizedBox(
            //       height: 15,
            //     ),
            //     InkWell(
            //       onTap: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => TrainingScreen(),
            //           ),
            //         );
            //       },
            //       child: const ButtonWidget(
            //         text: 'Return to Home !',
            //         color: Color(0xFF414ECA),
            //       ),
            //     ),
          ],
        ),
      ),
    );
  }
}
