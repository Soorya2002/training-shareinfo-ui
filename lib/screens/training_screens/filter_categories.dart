import 'package:flutter/material.dart';
import 'package:training/widgets/filter_box.dart';

class FilterCategory extends StatefulWidget {
  const FilterCategory({super.key});

  @override
  State<FilterCategory> createState() => _FilterCategoryState();
}

class _FilterCategoryState extends State<FilterCategory> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 160,
      child: Padding(
        padding: const EdgeInsets.only(right: 0),
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/shareinfo.png'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  'Application Status',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF34A853),
                    fontSize: 10,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const FilterBox(
                boxColor: Color(0xFFDEE0F3),
                labelColor: Color(0xFF4285F4),
                labelText: 'On-Going',
              ),
              const FilterBox(
                boxColor: Color(0xFFFFF6DA),
                labelText: 'Pending',
                labelColor: Color(0xFFC2930F),
              ),
              const FilterBox(
                  labelText: 'Rejected',
                  labelColor: Color(0xFFEA4335),
                  boxColor: Color(0xFFFCE1DF)),
              const FilterBox(
                  labelText: 'Approved',
                  labelColor: Color(0xFF34A853),
                  boxColor: Color(0xFFDEF9E5)),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  'Application Category',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFEA4335),
                    fontSize: 9,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const FilterBox(
                labelText: 'General',
                labelColor: Color(0xFF4285F4),
                boxColor: Color(0xFFDEE0F3),
              ),
              const FilterBox(
                labelText: 'Institutional',
                labelColor: Color(0xFF34A853),
                boxColor: Color(0xFFDEF9E5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
