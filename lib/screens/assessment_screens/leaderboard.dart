import 'package:flutter/material.dart';
import 'package:training/widgets/button_widget.dart';

class LeaderboadScreen extends StatefulWidget {
  const LeaderboadScreen({super.key});

  @override
  State<LeaderboadScreen> createState() => _LeaderboadScreenState();
}

class _LeaderboadScreenState extends State<LeaderboadScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * .2,
            ),
            Image.asset(
              'assets/leaderboard.gif',
              width: screenWidth * 0.9,
            ),
            SizedBox(
              height: screenHeight * .05,
            ),
            Row(
              children: [
                SizedBox(
                  width: screenWidth * .26,
                ),
                const Text(
                  "ShareInfo",
                  style: TextStyle(
                    color: Color(0xFFF9772E),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: screenWidth * .34,
            ),
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [Color(0xFFDA4ED5), Color(0xFFFF3288)],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ).createShader(bounds);
              },
              child: const Text(
                'Leaderboards',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .01,
            ),
            const Column(
              children: [
                Text(
                  'You Haven’t Enough Permission to',
                  style: TextStyle(
                    color: Color(0xFF414ECA),
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Access This Feature !',
                  style: TextStyle(
                    color: Color(0xFF414ECA),
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .009,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Connect with Your Campus Administration to Unlock  ',
                  style: TextStyle(
                    color: Color(0xFF8B8B8B),
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Image.asset('assets/unlock.png'),
              ],
            ),
            SizedBox(
              height: screenHeight * .13,
            ),
            const Text(
              "Start an Assessment!",
              style: TextStyle(
                color: Color(0xFF8B8B8B),
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              width: screenWidth * .27,
              height: screenHeight * .001,
              color: Color(0xFF8B8B8B),
            ),
            SizedBox(
              height: screenHeight * .01,
            ),
            ButtonWidget(text: 'Explore More', color: Color(0xFF414ECA))
          ],
        ),
      ),
    );
  }
}
