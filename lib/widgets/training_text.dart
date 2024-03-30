import 'package:flutter/material.dart';
import 'package:training/widgets/bullet.dart';

class TrainingText extends StatelessWidget {
  const TrainingText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Bullet(
          bsize: 0,
          width: 5,
          height: 5,
          text: 'Topics will Cover',
          size: 13,
          fontWeight: FontWeight.w700,
          color: Color(0xFFEE5602),
        ),
        Bullet(
          text: '1. Introduction to Python',
          width: 5,
          height: 5,
          size: 12,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF414ECA),
        ),
        Bullet(text: 'What is Python and why is it popular?'),
        Bullet(
          text: 'Setting up your Python development environment',
          height: 5,
        ),
        Bullet(
          text: '2. Python Fundamentals',
          height: 5,
          width: 5,
          size: 12,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF414ECA),
        ),
        Bullet(
          text:
              'Understanding basic syntax and data types (numbers, \nstrings, booleans, etc.)',
        ),
        Bullet(
          text:
              'Working with variables and operators (arithmetic, \ncomparison, logical)',
          height: 5,
        ),
        Bullet(
          text: '3. Control Flow',
          height: 5,
          width: 5,
          size: 12,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF414ECA),
        ),
        Bullet(
            text: 'Using conditional statements (if/else) for decision making'),
        Bullet(text: 'Implementing loops (for, while) for repetitive tasks'),
        Bullet(text: '4. Functions'),
        Bullet(text: 'Defining and using functions to organize code'),
        Bullet(
          text: 'Understanding arguments and return values',
          height: 5,
        ),
        Bullet(
          text: '5. Data Structures',
          height: 5,
          width: 5,
          size: 12,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF414ECA),
        ),
        Bullet(
          text: 'Creating and manipulating lists, tuples, and dictionaries',
          height: 5,
        ),
        Bullet(
          text: '6. Input and Output',
          height: 5,
          width: 5,
          size: 12,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF414ECA),
        ),
        Bullet(text: ' Getting user input using the input() function'),
        Bullet(
          text: 'Formatting and printing output to the console',
          height: 5,
        ),
        Bullet(
          text: '7. Debugging Techniques',
          height: 5,
          width: 5,
          size: 12,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF414ECA),
        ),
        Bullet(
          text: 'Identifying and fixing errors in your Python code',
          height: 5,
        ),
        Bullet(
          text: '8. Additional Topics (Optional)',
          height: 5,
          width: 5,
          size: 12,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF414ECA),
        ),
        Bullet(
          text: 'Introduction to file handling (reading and writing to files)',
        ),
        Bullet(
          text: 'Basic modules and packages in Python',
          height: 5,
        ),
        Bullet(
          text: '9. Practice and Next Steps ',
          height: 5,
          width: 5,
          size: 12,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF414ECA),
        ),
        Bullet(text: 'Resources for further learning and practice exercises'),
        Bullet(
          text: 'Exploring potential applications of Python',
          height: 5,
        ),
        Bullet(
          width: 5,
          size: 11.5,
          text:
              'This training will equip you with the essential building blocks \nof Python programming. By the end, you\'ll be able to write \nsimple Python programs and have a strong foundation for \nfurther learning.',
          bsize: 0,
        )
      ],
    );
  }
}
