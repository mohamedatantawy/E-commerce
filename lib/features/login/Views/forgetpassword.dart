import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/login/Views/widget/forgetpasswordbody.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Reset password',
          style: Appstyles.font30.copyWith(color: Colors.black),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Forgetpasswordbody(),
      ),
    );
  }
}
