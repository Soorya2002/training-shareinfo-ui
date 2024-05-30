import 'package:flutter/material.dart';
import 'package:training/widgets/bullet.dart';

class PrequirementTextB extends StatelessWidget {
  const PrequirementTextB({super.key});

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
          text: 'You Should Know About',
          size: 13,
          fontWeight: FontWeight.w700,
          color: Color(0xFFEE5602),
        ),
        Bullet(
          text: '1. Technical Skills:',
          width: 5,
          height: 5,
          size: 12,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF414ECA),
        ),
        Bullet(
          text: 'a. Basic Computer Literacy:',
          width: 20,
          height: 5,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF077BD8),
        ),
        Bullet(
          text:
              'i. Familiarity with using a computer, navigating \noperating systems (Windows, macOS, Linux), and \nusing common software (browsers, word processors, \netc.) is essential.',
          bsize: 0,
          size: 11,
          width: 40,
        ),
        Bullet(
          text: 'b. Logical Thinking:',
          width: 20,
          height: 5,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF077BD8),
        ),
        Bullet(
          text:
              'i. The ability to break down problems into logical steps \nand think algorithmically is crucial for programming.',
          bsize: 0,
          size: 11,
          width: 40,
        ),
        Bullet(
          text: 'c. Optional (but Beneficial):',
          width: 20,
          height: 5,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF077BD8),
        ),
        Bullet(
          text:
              'i. Prior Programming Experience: While not strictly \nnecessary, some experience with another \nprogramming language can be helpful in \nunderstanding core programming concepts.',
          bsize: 0,
          size: 11,
          width: 40,
        ),
        Bullet(
          text: '2. Soft Skills:',
          width: 5,
          height: 5,
          size: 12,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF414ECA),
        ),
        Bullet(
          text: 'a. Problem-Solving Skills:',
          width: 20,
          height: 5,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF077BD8),
        ),
        Bullet(
          text:
              'i. The ability to identify problems, analyze them, and \ndevelop solutions is essential for any programmer.',
          bsize: 0,
          size: 11,
          width: 40,
        ),
        Bullet(
          text: 'b. Analytical Thinking:',
          width: 20,
          height: 5,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF077BD8),
        ),
        Bullet(
          text:
              'i. Being able to break down complex tasks into \nsmaller, manageable steps is important for \nsuccessful coding.',
          bsize: 0,
          size: 11,
          width: 40,
        ),
        Bullet(
          text: 'c. Attention to Detail:',
          width: 20,
          height: 5,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF077BD8),
        ),
        Bullet(
          text:
              'i. Python relies heavily on proper syntax and structure. \nA keen eye for detail will help you write error-free \ncode.',
          bsize: 0,
          size: 11,
          width: 40,
        ),
        Bullet(
          text: 'd. Motivation and Self-Discipline:',
          width: 20,
          height: 5,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF077BD8),
        ),
        Bullet(
          text:
              'i. Learning to code takes time and effort. Being self-\nmotivated and disciplined will help you stay on track \nand achieve your goals.',
          bsize: 0,
          size: 11,
          width: 40,
        ),
        Bullet(
          text: '3. Additional Tips:',
          width: 5,
          height: 5,
          size: 12,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF414ECA),
        ),
        Bullet(
          text: 'a. Interest in Python and its Applications:',
          width: 20,
          height: 5,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF077BD8),
        ),
        Bullet(
          text:
              'i. Having a genuine interest in Python and the various \nfields it\'s used in (web development, data science, \netc.) will make the learning process more enjoyable \nand engaging.',
          bsize: 0,
          size: 11,
          width: 40,
        ),
        Bullet(
          text: 'b. Basic Math Skills:',
          width: 20,
          height: 5,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF077BD8),
        ),
        Bullet(
          text:
              'i. A solid understanding of basic mathematical \nconcepts like arithmetic, algebra, and logic will be \nhelpful for certain aspects of Python programming.',
          bsize: 0,
          size: 11,
          width: 40,
        ),
        Bullet(
          text: 'c. Basic Math Skills:',
          width: 20,
          height: 5,
          bsize: 0,
          fontWeight: FontWeight.w600,
          color: Color(0xFF077BD8),
        ),
        Bullet(
          text:
              'i. A solid understanding of basic mathematical \nconcepts like arithmetic.',
          bsize: 0,
          size: 11,
          width: 40,
        ),
      ],
    );
  }
}
