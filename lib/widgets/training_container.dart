import 'package:flutter/material.dart';
import 'package:training/widgets/training_content.dart';
import 'package:training/screens/trainingdetailed.dart';

class TrainingContainer extends StatelessWidget {
  const TrainingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TrainingDetailed(),
              ),
            );
          },
          child: Container(
            width: screenWidth * 0.9,
            height: screenHeight * 0.22,
            decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(102, 139, 139, 139)),
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: const TrainingContent(
                date: '07 Mar 2024; Thursday',
                text2: 'Dr. Subhash || IIT Madras',
                img: 'assets/python.png',
                text1: 'Python Basics',
                texta: 'ShareInfo\t',
                textb: 'for\t',
                textc: 'CE Thalassery'),
          ),
        ),
      ],
    );
  }
}
