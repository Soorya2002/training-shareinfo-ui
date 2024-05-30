import 'package:flutter/material.dart';
import 'package:training/screens/training_screens/assessment_detailed.dart';
import 'package:training/widgets/button_widget.dart';
import 'package:training/screens/training_screens/pre_requirements.dart';
import 'package:training/widgets/training_widgets/training_content.dart';
import 'package:training/widgets/training_widgets/training_text.dart';

class TrainingDetailed extends StatefulWidget {
  const TrainingDetailed({super.key});

  @override
  State<TrainingDetailed> createState() => _TrainingDetailedState();
}

class _TrainingDetailedState extends State<TrainingDetailed> {
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
        title: const Text('Trainings'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Center(
              child: Container(
                width: screenWidth * 0.9,
                height: screenHeight * 1.08,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(102, 139, 139, 139),
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    const TrainingContent(
                      date: '07 Mar 2024; Thursday',
                      text2: 'Dr. Subhash || IIT Madras',
                      img: 'assets/python.png',
                      text1: 'Python Basics',
                      texta: 'ShareInfo\t',
                      textb: 'for\t',
                      textc: 'CE Thalassery',
                      myIconData: null,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: screenWidth * 0.8,
                      height: 1,
                      color: const Color(0xFFD9D9D9),
                    ),
                    const TrainingText(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const ButtonWidget(
              text: 'Remind Me',
              color: Color(0xFF8B8B8B),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrerequirementScreen(),
                  ),
                );
              },
              child: const ButtonWidget(
                text: 'Check Pre-Requirements',
                color: Color(0xFF077BD8),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AssessmentDetailedScreen(),
                  ),
                );
              },
              child: const ButtonWidget(
                text: 'Start Assessment',
                color: Color(0xFF414ECA),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
