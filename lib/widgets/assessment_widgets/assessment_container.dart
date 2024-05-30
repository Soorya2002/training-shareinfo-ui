import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:training/widgets/assessment_widgets/assessment_content.dart';

class AssessmentContainer extends StatefulWidget {
  const AssessmentContainer({
    super.key,
  });

  @override
  State<AssessmentContainer> createState() => _TrainingContainerState();
}

class _TrainingContainerState extends State<AssessmentContainer> {
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
        Container(
          width: screenWidth * 0.9,
          height: screenHeight * 0.22,
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(102, 139, 139, 139)),
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          child: AssessmentContent(
            img: 'assets/python.png',
            text1: data['title'] ?? '',
            texta: 'ShareInfo\t',
            textb: 'for\t',
            textc: 'CE Thalassery',
          ),
        ),
      ],
    );
  }

  Future<void> getUserData() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

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
