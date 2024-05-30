import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:http/http.dart' as http;
import 'package:training/screens/assessment_screens/assessment_splash.dart';
import 'package:training/screens/training_screens/filter_categories.dart';
import 'package:training/widgets/training_widgets/training_container.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Map<String, dynamic> data = {};
  bool isLoading = true;
  final int count = 8;

  @override
  void initState() {
    super.initState();

    getUserData();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Trainings'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AssessmentSplashscreen(),
                ),
              );
            },
            child: Icon(
              Symbols.data_exploration,
              color: Color(0xFF414ECA),
              size: 30,
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      endDrawer: FilterCategory(),
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
                Text(
                  "0$count Upcoming Trainings",
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
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0x7fd9d9d9),
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Color(0xFFABABAB),
                    hintText: 'search',
                    hintStyle: TextStyle(
                      color: Color(0xFFABABAB),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _scaffoldKey.currentState!.openEndDrawer();
                      },
                      child: Icon(
                        Icons.filter_alt,
                        size: 30,
                      ),
                    ),
                    suffixIconColor: Color(0xFF4285F4),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            isLoading
                ? CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                      itemCount: count,
                      itemBuilder: (context, index) {
                        return TrainingContainer();
                      },
                    ),
                  ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getUserData() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/3'));

      if (response.statusCode == 200) {
        setState(() {
          data = jsonDecode(response.body);
          isLoading = false;
        });
      }
    } catch (e) {
      print(e);
      setState(() {
        isLoading = false;
      });
    }
  }
}
