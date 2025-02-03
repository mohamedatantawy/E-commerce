import 'package:commerce8/core/function/styles.dart';
import 'package:flutter/material.dart';

class Customelevaterbutton extends StatelessWidget {
  const Customelevaterbutton(
      {super.key, required this.onpressed, required this.title});
  final VoidCallback onpressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.sizeOf(context).width * 0.8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onpressed,
        child: Text(
          title,
          style: Appstyles.font22,
        ),
      ),
    );
  }
}
