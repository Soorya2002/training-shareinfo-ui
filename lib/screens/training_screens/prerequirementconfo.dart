import 'package:flutter/material.dart';
import 'package:training/screens/training_screens/training_screen.dart';
import 'package:training/widgets/button_widget.dart';

class PreRequirementConfo extends StatefulWidget {
  const PreRequirementConfo({super.key});

  @override
  State<PreRequirementConfo> createState() => _PreRequirementConfoState();
}

class _PreRequirementConfoState extends State<PreRequirementConfo> {
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
          children: [
            SizedBox(
              height: screenHeight * .3,
            ),
            Image.asset(
              'assets/confo.gif',
              width: screenWidth * 0.9,
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
            const Text(
              'You are in Queue !',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            const Text(
              'We will Notify You !',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: screenHeight * .22,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TrainingScreen(),
                  ),
                );
              },
              child: const ButtonWidget(
                text: 'Go to Home !',
                color: Color(0xFF414eca),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
