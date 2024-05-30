import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:training/widgets/assessment_widgets/assessmentbox_container.dart';

class PreRequirementContent extends StatefulWidget {
  final String img;
  final String text1;
  final String texta;
  final String textb;
  final String textc;

  final IconData? myIconData;
  const PreRequirementContent({
    super.key,
    required this.img,
    required this.text1,
    required this.texta,
    required this.textb,
    required this.textc,
    this.myIconData = Symbols.avg_pace,
  });

  @override
  State<PreRequirementContent> createState() => _TrainingContentState();
}

class _TrainingContentState extends State<PreRequirementContent> {
  List<Map<String, dynamic>> data = [];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.025,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: screenWidth * 0.1,
                height: screenHeight * 0.05,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(102, 139, 139, 139),
                    ),
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.white),
                child: Image.asset(widget.img)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.text1,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: widget.texta,
                        style: const TextStyle(
                          color: Colors.orange,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: widget.textb,
                        style: const TextStyle(
                          color: Color(0xFF8B8B8B),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: widget.textc,
                        style: const TextStyle(
                          color: Color(0xFF077BD8),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Icon(
              widget.myIconData,
              color: Color(0xFF414ECA),
              size: 28,
            )
          ],
        ),
        SizedBox(
          height: screenHeight * 0.015,
        ),
        Container(
          width: screenWidth * 0.8,
          height: screenHeight * 0.001,
          color: const Color(0xFFD9D9D9),
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BoxContainer(
                  width: screenWidth * 0.25,
                  height: screenHeight * 0.03,
                  textx: '25 Questions',
                  bcolor: Color(0xFF1B94F6),
                  tcolor: Color(0xFF1B94F6),
                ),
                BoxContainer(
                  width: screenWidth * 0.24,
                  height: screenHeight * 0.03,
                  textx: '25 Minutes',
                  bcolor: Color(0xFF1B94F6),
                  tcolor: Color(0xFF1B94F6),
                ),
                BoxContainer(
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.03,
                  textx: 'Last Date: 25-04-2024',
                  bcolor: Color(0xFFF31919),
                  tcolor: Color(0xFFF31919),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
