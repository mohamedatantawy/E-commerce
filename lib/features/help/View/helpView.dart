import 'package:commerce8/core/function/styles.dart';
import 'package:flutter/material.dart';

class Helpview extends StatelessWidget {
  const Helpview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,

        //  backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.blue[400],
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Help',
          //   style: Appstyles.font30.copyWith(// color: Colors.black, fontSize: 25),
        ),
      ),
      body: Center(
          child: GestureDetector(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
              child: Text(
            'Call me',
            style: Appstyles.font28,
          )),
        ),
      )),
    );
  }
}
