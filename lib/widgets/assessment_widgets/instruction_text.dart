import 'package:flutter/material.dart';
import 'package:training/widgets/bullet.dart';

class InstructionText extends StatelessWidget {
  const InstructionText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Bullet(
          text: 'Multiple Choice Questions (MCQs) (Estimated Time: 30 minutes)',
          bsize: 0,
        ),
        Bullet(
          text:
              'This section will contain [Number] MCQs covering various \naspects of computer science and programming.',
          width: 28,
        ),
        Bullet(
          text: 'Questions may focus on topics like: ',
          width: 28,
        ),
        Bullet(
          text:
              'Programming fundamentals (e.g., variables, data types, \ncontrol flow)',
          width: 44,
          fontWeight: FontWeight.w400,
        ),
        Bullet(
          text:
              'Algorithms and data structures (e.g., sorting, searching, \narrays, linked lists',
          width: 44,
          fontWeight: FontWeight.w400,
        ),
        Bullet(
          text:
              'Object-Oriented Programming (OOP) concepts (e.g., classes, \ninheritance, polymorphism)',
          width: 44,
          fontWeight: FontWeight.w400,
        ),
        Bullet(
          text:
              'Specific programming languages (questions may be tailored \nto a specific language mentioned in the job description)',
          width: 44,
          fontWeight: FontWeight.w400,
        ),
        Bullet(
          text: 'Each MCQ will have [Number] answer choices.',
          width: 28,
        ),
        Bullet(
          text: 'Choose the single best answer for each question.',
          width: 28,
        ),
        Bullet(
          text:
              'There will be [Negative marking applicable/No negative \nmarking] for incorrect answers. (Specify if there\'s a penalty for \nwrong answers)',
          width: 28,
        ),
        Bullet(
          text:
              'This is a timed assessment. Please manage your time \neffectively between MCQs and explanations.',
          width: 28,
        ),
        Bullet(
          text:
              'A basic code editor or scratchpad may be provided for note-\ntaking purposes. (Specify if a code editor will be available)',
          width: 28,
        ),
        Bullet(
          text: 'Calculators or other external resources are not allowed.',
          width: 28,
        ),
        Bullet(
          text:
              'You may not collaborate with others or seek external help \nduring the assessment.',
          width: 28,
        ),
        Bullet(
          text:
              'All answers will be reviewed to assess your understanding and \nproblem-solving skills.',
          width: 28,
        ),
      ],
    );
  }
}
