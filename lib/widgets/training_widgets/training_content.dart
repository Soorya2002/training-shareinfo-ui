import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:training/widgets/box_container.dart';

class TrainingContent extends StatefulWidget {
  final String img;
  final String text1;
  final String texta;
  final String textb;
  final String textc;
  final String text2;
  final String date;
  final IconData? myIconData;
  const TrainingContent({
    super.key,
    required this.img,
    required this.text1,
    required this.texta,
    required this.textb,
    required this.textc,
    required this.text2,
    required this.date,
    this.myIconData = Symbols.notification_add,
  });

  @override
  State<TrainingContent> createState() => _TrainingContentState();
}

class _TrainingContentState extends State<TrainingContent> {
  List<Map<String, dynamic>> data = [];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 46,
                height: 46,
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
                const SizedBox(
                  height: 3,
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
        const SizedBox(
          height: 12,
        ),
        Container(
          width: screenWidth * 0.8,
          height: 1,
          color: const Color(0xFFD9D9D9),
        ),
        const SizedBox(
          height: 6,
        ),
        Column(
          children: [
            Text(
              widget.text2,
              style: const TextStyle(
                color: Color(0xFF8B8B8B),
                fontSize: 12.5,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoxContainer(
                  width: screenWidth * 0.2,
                  height: screenHeight * 0.03,
                  swidth: 65,
                  textx: 'On-Site',
                  bcolor: Color(0xFF1B94F6),
                  tcolor: Color(0xFF1B94F6),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.date,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFF31919),
                  ),
                ),
              ],
            ),
            BoxContainer(
              swidth: 108,
              width: screenWidth * 0.5,
              height: screenHeight * 0.035,
              textx: 'ShareInfo for Learn Assessment',
              bcolor: Color(0xFFEE5602),
              tcolor: Color(0xFFEE5602),
            ),
          ],
        ),
      ],
    );
  }
}
