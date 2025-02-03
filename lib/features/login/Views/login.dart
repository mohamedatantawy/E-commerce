import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/login/Views/widget/loginbody.dart';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Login',
          style: Appstyles.font30.copyWith(color: Colors.black),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: loginbody(),
      ),
    );
  }
}
