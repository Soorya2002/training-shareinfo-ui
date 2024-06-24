import 'package:flutter/material.dart';
import 'package:training/widgets/bullet.dart';

class McqTechnicalText extends StatefulWidget {
  const McqTechnicalText({super.key});

  @override
  State<McqTechnicalText> createState() => _McqTechnicalTextState();
}

class _McqTechnicalTextState extends State<McqTechnicalText> {
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Bullet(
          text: 'MCQ Rounds',
          color: Colors.black,
          bsize: 0,
          fontWeight: FontWeight.w700,
          size: 14,
        ),
        Bullet(
          text:
              'MCQ rounds, short for Multiple Choice Question rounds, \nare a common assessment format used in both aptitude \nand technical interviews. They allow for efficient \nevaluation of a candidate\'s knowledge base across a \nrange of topics. Here\'s a breakdown:',
          bsize: 0,
          size: 13,
        ),
        Bullet(
          text:
              'Format: Candidates are presented with a set of \nquestions where each question has several answer \nchoices. Only one answer is typically correct.',
          size: 13,
          width: 30,
        ),
        Bullet(
          text: 'Benefits:',
          size: 13,
          width: 30,
        ),
        Bullet(
          text:
              'Efficiency: MCQs allow for quick assessment of a \nlarge number of candidates or a broad range of \ntopics in a limited time frame.',
          size: 13,
          width: 50,
        ),
        Bullet(
          text:
              'Objectivity: Scoring is straightforward and \neliminates potential bias from interviewers who \nmight favor certain answer styles.',
          size: 13,
          width: 50,
        ),
        Bullet(
          text:
              'Standardization: MCQ rounds can be easily \nstandardized across different locations or hiring \nteams.',
          size: 13,
          width: 50,
        ),
        Bullet(
          text: 'Drawbacks:',
          size: 13,
          width: 30,
        ),
        Bullet(
          text:
              'Limited Depth: MCQs can only assess factual \nknowledge and may not reveal a candidate\'s \nproblem-solving skills or ability to apply \nknowledge in real-world scenarios.',
          size: 13,
          width: 50,
        ),
        Bullet(
          text:
              'Guessing: There\'s a chance of candidates getting \nlucky by guessing the correct answer.',
          size: 13,
          width: 50,
        ),
        Bullet(
          text:
              'MCQ rounds are often used as a screening tool in the \ninitial stages of the interview process. They can help \nidentify candidates with a strong foundation in the \nrequired knowledge before moving on to more in-depth \nassessments like technical coding challenges or scenario-\nbased discussions.',
          size: 13,
          bsize: 0,
        ),
        SizedBox(
          height: screenHeight * 0.025,
        ),
        Bullet(
          text: 'Technical Rounds',
          size: 14,
          bsize: 0,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
        Bullet(
          text:
              'Technical rounds are interviews designed to assess a \ncandidate\'s skills and knowledge in a specific technical \ndomain. Think of them as exams for your tech abilities. \nThese interviews often involve:',
          size: 13,
          bsize: 0,
        ),
        Bullet(
          text:
              'Problem-solving: You\'ll be presented with a technical \nproblem and expected to demonstrate your thought \nprocess and coding ability (if applicable) to solve it.',
          size: 13,
          width: 30,
        ),
        Bullet(
          text:
              'Technical questioning: The interviewer will ask \nquestions to gauge your understanding of \nprogramming languages, frameworks, software, or \nengineering concepts relevant to the job.',
          size: 13,
          width: 30,
        ),
        Bullet(
          text:
              'Scenario-based discussions: You might be presented \nwith real-world scenarios faced by the company and \nasked how you\'d approach them technically.',
          size: 13,
          width: 30,
        ),
        Bullet(
          text:
              'These rounds help employers determine if you can handle \nthe technical aspects of the job and fit well with their \nteam.',
          size: 13,
          bsize: 0,
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
      ],
    );
  }
}
