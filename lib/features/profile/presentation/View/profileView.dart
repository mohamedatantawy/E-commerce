import 'package:commerce8/features/home/presentation/View/model/accountmodels.dart';
import 'package:commerce8/features/profile/presentation/widget/profileViewbody.dart';
import 'package:flutter/material.dart';

class Profileview extends StatelessWidget {
  const Profileview({super.key, required this.accountmodels});
  final Accountmodels accountmodels;
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
          'profile',
          //   style: Appstyles.font30.copyWith(// color: Colors.black, fontSize: 25),
        ),
      ),
        body:  Profileviewbody(accountmodels:accountmodels ,),
    );
  }
}
