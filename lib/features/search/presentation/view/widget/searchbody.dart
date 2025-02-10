import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/core/widget/customtextfield.dart';
import 'package:flutter/material.dart';

class searchbody extends StatefulWidget {
  const searchbody({
    super.key,
  });

  @override
  State<searchbody> createState() => _searchbodyState();
}

class _searchbodyState extends State<searchbody> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Enter your product you need ',
            style: Appstyles.font23,
          ),
           const SizedBox(
            height: 30,
          ),
          customtextfield(
            icon: Icons.search,
            hint: 'Search',
            text: search,
          ),
        ],
      ),
    );
  }
}
