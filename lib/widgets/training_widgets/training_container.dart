import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:training/widgets/training_widgets/training_content.dart';
import 'package:training/screens/training_screens/trainingdetailed.dart';
import 'package:http/http.dart' as http;

class TrainingContainer extends StatefulWidget {
  const TrainingContainer({
    super.key,
  });

  @override
  State<TrainingContainer> createState() => _TrainingContainerState();
}

class _TrainingContainerState extends State<TrainingContainer> {
  Map<String, dynamic> data = {};
  // bool isLoading = true;
  @override
  void initState() {
    super.initState();

    getUserData();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TrainingDetailed(),
              ),
            );
          },
          child: Container(
            width: screenWidth * 0.9,
            height: screenHeight * 0.22,
            decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(102, 139, 139, 139)),
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: TrainingContent(
              date: '07 Mar 2024; Thursday',
              text2: 'Dr. Subhash || IIT Madras',
              img: 'assets/python.png',
              text1: data['title'] ?? '',
              texta: 'ShareInfo\t',
              textb: 'for\t',
              textc: 'CE Thalassery',
            ),
          ),
        ),
      ],
    );
  }

  Future<void> getUserData() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/3'));
      // print(data);
      if (response.statusCode == 200) {
        setState(() {
          data = jsonDecode(response.body);
          // isLoading = false;
        });
      }
    } catch (e) {
      print(e);
      setState(() {
        // isLoading = false;
      });
    }
  }
}
