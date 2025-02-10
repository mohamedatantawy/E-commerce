import 'package:flutter/material.dart';

class Helpview extends StatelessWidget {
  const Helpview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Dialog(
          backgroundColor: Colors.amber,
          child: Container(
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
