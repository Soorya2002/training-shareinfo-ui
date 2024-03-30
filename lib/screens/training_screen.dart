import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:training/widgets/training_container.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Trainings'),
        actions: const [
          Icon(
            Symbols.data_exploration,
            color: Color(0xFF414ECA),
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: screenWidth * .05,
                ),
                const Text(
                  "05 Upcoming Trainings",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF414ECA)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                width: screenWidth * 0.9,
                child: const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0x7fd9d9d9),
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Color(0xFFABABAB),
                    hintText: 'search',
                    hintStyle: TextStyle(
                      color: Color(0xFFABABAB),
                    ),
                    suffixIcon: Icon(
                      Icons.filter_alt,
                      size: 30,
                    ),
                    suffixIconColor: Color(0xFF4285F4),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const TrainingContainer(),
          ],
        ),
      ),
    );
  }
}
