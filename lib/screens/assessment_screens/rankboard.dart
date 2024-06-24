import 'package:flutter/material.dart';
import 'package:training/widgets/assessment_widgets/aspirantbox.dart';
import 'package:training/widgets/assessment_widgets/aspirantcontainer.dart';
import 'package:training/widgets/assessment_widgets/model.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final aspirants = [
      Aspirant(
        name: 'Alexander',
        imagePath: 'assets/alex.png',
        submissionTime: 'Submitted on: 01 Day 20 Hours',
        rank: 01,
        height: 80,
      ),
      Aspirant(
        name: 'Christopher',
        imagePath: 'assets/chris.png',
        submissionTime: 'Submitted on: 3 Day 20 Hours',
        rank: 02,
        height: 80,
      ),
      Aspirant(
        name: 'Mia',
        imagePath: 'assets/mia.png',
        submissionTime: 'Submitted on: 3 Day 20 Hours',
        rank: 03,
        height: 80,
      ),
      Aspirant(
        name: 'Zone',
        imagePath: 'assets/zone.png',
        submissionTime: 'Submitted on: 3 Day 20 Hours',
        rank: 04,
        height: 80,
      ),
      Aspirant(
        name: 'Max',
        imagePath: 'assets/max.png',
        submissionTime: 'Submitted on: 3 Day 20 Hours',
        rank: 05,
        height: 80,
      ),
      Aspirant(
        name: 'Ben',
        imagePath: 'assets/ben.png',
        submissionTime: 'Submitted on: 3 Day 20 Hours',
        rank: 06,
        height: 80,
      ),
      Aspirant(
        name: 'Ashley',
        imagePath: 'assets/ashley.png',
        submissionTime: 'Submitted on: 3 Day 20 Hours',
        rank: 07,
        height: 80,
      ),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const AspirantContainer(),
            const SizedBox(height: 21),
            AspirantBox(
              imagePath: 'assets/ann.png',
              name: 'Ann Marry John',
              user: ' (You)',
              rank: 15,
              submissionTime: 'Submitted on: 3 Day 20 Hours',
              height: screenHeight * 0.1,
              rightPosition: 0.05,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * .39,
                  height: 2,
                  color: const Color(0xFFE1D7D7),
                ),
                SizedBox(width: screenWidth * .01),
                Container(
                  width: screenWidth * .1,
                  height: 2,
                  color: const Color(0xFFE1D7D7),
                ),
                SizedBox(width: screenWidth * .01),
                Container(
                  width: screenWidth * .39,
                  height: 2,
                  color: const Color(0xFFE1D7D7),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: screenWidth * .05),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Live Competition',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF3A0070),
                        ),
                      ),
                      TextSpan(
                        text: ' (20)',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF414ECA),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              children: aspirants.map((aspirant) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspirantBox(
                    height: aspirant.height,
                    name: aspirant.name,
                    imagePath: aspirant.imagePath,
                    submissionTime: aspirant.submissionTime,
                    rank: aspirant.rank,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * .2,
                  height: 2,
                  color: const Color(0xFFE1D7D7),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "  124 Aspirants",
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: " are trying to Solve!  ",
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * .2,
                  height: 2,
                  color: const Color(0xFFE1D7D7),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
