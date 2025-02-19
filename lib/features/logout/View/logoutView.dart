import 'package:commerce8/core/constant/assets.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/core/widget/customelevaterbutton.dart';
import 'package:commerce8/features/home/presentation/View/model/accountmodels.dart';
import 'package:flutter/material.dart';

class Logoutview extends StatelessWidget {
  const Logoutview({super.key, required this.accountmodels});
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
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            const CircleAvatar(
              radius: 90,
              child: const CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(
                  Assets.assetsImagesIMG20230611201350769,
                ),
                radius: 80,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
              ),
              title: Text(
                'Named',
                style: Appstyles.font23,
              ),
              subtitle: Text(
                accountmodels.name,
                style: Appstyles.font18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(
                Icons.email,
              ),
              title: Text(
                'email',
                style: Appstyles.font23,
              ),
              subtitle: Text(
                accountmodels.email,
                style: Appstyles.font18,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Customelevaterbutton(
                onpressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            title: Text(
                              'You are sure ',
                              style: Appstyles.font28,
                              textAlign: TextAlign.center,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 25),
                            content: Customelevaterbutton(
                                onpressed: () {}, title: 'Yes'));
                      });
                },
                title: 'Log out')
          ],
        ),
      ),
    );
  }
}
