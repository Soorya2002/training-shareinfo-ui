import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:training/screens/assessment_screens/assessment_prerequirement.dart';
import 'package:training/screens/training_screens/filter_categories.dart';
import 'package:training/screens/assessment_screens/leaderboard.dart';
import 'package:training/widgets/assessment_widgets/assessment_container.dart';

class AssessmentListing extends StatefulWidget {
  const AssessmentListing({super.key});

  @override
  State<AssessmentListing> createState() => _AssessmentListingState();
}

class _AssessmentListingState extends State<AssessmentListing> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Map<String, dynamic> data = {};
  bool isLoading = true;

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
        title: const Text(
          'Assessments',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LeaderboadScreen(),
                ),
              );
            },
            child: Icon(
              Symbols.social_leaderboard,
              color: Color(0xFF414ECA),
              size: 30,
            ),
          ),
          SizedBox(
            width: screenWidth * .05,
          ),
        ],
      ),
      endDrawer: FilterCategory(),
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PrerequirementScreenB(),
            ),
          );
        },
        child: Container(
          width: screenWidth,
          height: screenHeight,
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * .04,
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
              SizedBox(
                height: screenHeight * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Ongoing Assessments",
                    style: TextStyle(
                      color: Color(0xFF414ECA),
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * .05,
                  ),
                ],
              ),
              isLoading
                  ? CircularProgressIndicator()
                  : Expanded(
                      child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return AssessmentContainer();
                        },
                      ),
                    ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              const Text(
                "More Assessments will Load Soon !",
                style: TextStyle(
                  color: Color(0xFF8B8B8B),
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getUserData() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

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
