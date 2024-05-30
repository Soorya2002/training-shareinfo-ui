import 'package:flutter/material.dart';
import 'package:training/screens/training_screens/practice.dart';
import 'package:training/screens/training_screens/prerequirementconfo.dart';
import 'package:training/widgets/button_widget.dart';
import 'package:training/widgets/training_widgets/requirement_text.dart';
import 'package:training/widgets/training_widgets/training_content.dart';

class PrerequirementScreen extends StatefulWidget {
  const PrerequirementScreen({super.key});

  @override
  State<PrerequirementScreen> createState() => _PrerequirementScreenState();
}

class _PrerequirementScreenState extends State<PrerequirementScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Prepare'),
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
                height: screenHeight * 1.18,
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
                    const PrequirementText(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PracticeScreen(),
                  ),
                );
              },
              child: const ButtonWidget(
                text: 'Start Preparing',
                color: Color(0xFF8B8B8B),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreRequirementConfo(),
                  ),
                );
              },
              child: const ButtonWidget(
                text: 'I’m Ready for Training',
                color: Color(0xFF077BD8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
