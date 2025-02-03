import 'package:commerce8/core/constant/assets.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/core/widget/customelevaterbutton.dart';
import 'package:commerce8/core/widget/customtextfield.dart';
import 'package:commerce8/features/login/manager/bloc/auths_bloc.dart';
import 'package:commerce8/features/login/model/usersmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewofSignup extends StatelessWidget {
  const ListViewofSignup({
    super.key,
    required this.formkey,
    required this.emialcontroler,
    required this.passwordcontroler,
    required this.namecontroler,
    required this.confirmpasswordcontroler,
    required this.phonecontroler,
  });
  final GlobalKey<FormState> formkey;
  final TextEditingController emialcontroler;
  final TextEditingController passwordcontroler;
  final TextEditingController namecontroler;
  final TextEditingController confirmpasswordcontroler;
  final TextEditingController phonecontroler;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 0,
        ),
        Center(
          child: Image.asset(
            Assets.assetsImagesLogo,
            height: 100,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Center(
          child: Text(
            'Create Your Profile',
            style: Appstyles.font28,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Center(
          child: Text(
            '--> Enter your infromation',
            style: Appstyles.font20,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        customtextfield(
          text: namecontroler,
          icon: Icons.email,
          hint: 'Your Name',
        ),
        const SizedBox(
          height: 10,
        ),
        customtextfield(
          text: emialcontroler,
          icon: Icons.email,
          hint: 'Email',
        ),
        const SizedBox(
          height: 15,
        ),
        customtextfield(
          text: passwordcontroler,
          icon: Icons.lock,
          hint: 'password',
          obscure: true,
        ),
        const SizedBox(
          height: 15,
        ),
        customtextfield(
          text: confirmpasswordcontroler,
          icon: Icons.lock,
          hint: 'confirm password',
          obscure: true,
        ),
        const SizedBox(
          height: 15,
        ),
        customtextfield(
          text: phonecontroler,
          icon: Icons.lock,
          hint: 'Your Phone',
        ),
        const SizedBox(
          height: 12,
        ),
        Customelevaterbutton(
            onpressed: () {
              if (formkey.currentState!.validate()) {
                BlocProvider.of<AuthsBloc>(context).add(
                  RegistorEvent(
                    email: emialcontroler.text!,
                    password: passwordcontroler.text,
                    usersmodel: Usersmodel(
                        name: namecontroler.text,
                        email: emialcontroler.text,
                        phone: phonecontroler.text,
                        time: DateTime.now()),
                  ),
                );

                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(" this is email: is true"),
                ));
                Navigator.pop(
                  context,
                );
              }
            },
            title: 'Sign Up'),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Go to Login Page -->",
              style: Appstyles.font20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
                child: const Text(
                  "login",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ],
    );
  }
}
