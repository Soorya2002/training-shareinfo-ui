import 'package:flutter/material.dart';
import 'package:training/data/questions.dart';
import 'package:training/widgets/assessment_widgets/mcq/box_row.dart';
import 'package:training/widgets/assessment_widgets/mcq/button.dart';
import 'package:training/widgets/assessment_widgets/mcq/dialog_box.dart';
import 'package:training/widgets/assessment_widgets/mcq/options.dart';
import 'package:training/widgets/assessment_widgets/mcq/select_option.dart';

class QuizContainer extends StatefulWidget {
  final double height, width;
  const QuizContainer({super.key, required this.height, required this.width
      // required this.onSelectAnswer
      });
  // final void Function(String answer) onSelectAnswer;

  @override
  State<QuizContainer> createState() => _QuizContainerState();
}

class _QuizContainerState extends State<QuizContainer> {
  var currentQuestionIndex = 0;
  var questionNumber = 1;
  void answerQuestion() {
    setState(
      () {
        if (currentQuestionIndex < 3) {
          currentQuestionIndex++;
          questionNumber++;
        } else {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return const DialogBox();
            },
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Column(
      children: [
        BoxRow(
          number: currentQuestionIndex < 3 ? questionNumber : 25,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            border: Border.all(
              color: const Color(0xFFD9D9D9),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 26,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  currentQuestion.text,
                  style: const TextStyle(
                    fontSize: 13.5,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFEE5602),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: widget.width * .85,
                height: 1,
                color: const Color(0xFF8B8B8B),
              ),
              const SizedBox(
                height: 25,
              ),
              ...currentQuestion.getQuestionAnswers().map(
                (
                  answer,
                ) {
                  final index =
                      currentQuestion.getQuestionAnswers().indexOf(answer);
                  final optionLetter = String.fromCharCode(97 + index);
                  return Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '$optionLetter.  ',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF8B8B8B),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      OptionContainer(
                        text: answer,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
        const SelectOption(),
        Button(
          text:
              currentQuestionIndex < 3 ? 'Next Question' : 'Finish Assessment',
          onTap: answerQuestion,
        ),
      ],
    );
  }
}
