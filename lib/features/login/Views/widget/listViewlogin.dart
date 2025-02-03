import 'package:commerce8/core/constant/assets.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/core/widget/customelevaterbutton.dart';
import 'package:commerce8/core/widget/customtextfield.dart';
import 'package:commerce8/features/login/Views/forgetpassword.dart';
import 'package:commerce8/features/login/Views/signup.dart';
import 'package:commerce8/features/login/manager/bloc/auths_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewofLogin extends StatelessWidget {
  const ListViewofLogin({
    super.key,
    required this.emialcontroler,
    required this.passwordcontroler,
    required this.formkey,
  });
  final GlobalKey<FormState> formkey;
  final TextEditingController emialcontroler;
  final TextEditingController passwordcontroler;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Image.asset(
            Assets.assetsImagesLogo,
            height: 100,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            'Welcome Back',
            style: Appstyles.font30semibold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            '--> Enter your account',
            style: Appstyles.font20,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        customtextfield(
          text: emialcontroler,
          icon: Icons.email,
          hint: 'Email',
        ),
        const SizedBox(
          height: 30,
        ),
        customtextfield(
          text: passwordcontroler,
          icon: Icons.lock,
          hint: 'password',
          obscure: true,
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Forgetpassword();
              }));
            },
            child: Text(
              'Forget password',
              style: Appstyles.font20.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
        Customelevaterbutton(
            onpressed: () {
              if (formkey.currentState!.validate()) {
                BlocProvider.of<AuthsBloc>(context).add(LoginEvent(
                    email: emialcontroler.text!,
                    password: passwordcontroler.text));
              }
            },
            title: 'login'),
        const SizedBox(
          height: 10,
        ),
        // Center(
        //   child: ElevatedButton(
        //     onPressed: () async {

        //       BlocProvider.of<AuthsBloc>(context).add(LoginEvent(
        //           email: emialcontroler.text!,
        //           password: passwordcontroler.text));
        //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        //         content: Text(" this is email:"),
        //       ));
        //     },
        //     child: Text('login'),
        //   ),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? -->",
              style: Appstyles.font20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Signup();
                  }));
                },
                child: const Text(
                  "Sign up",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
        // Center(
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       ElevatedButton(
        //         style: ElevatedButton.styleFrom(
        //           backgroundColor: Colors.white,
        //         ),
        //         onPressed: () {
        //           if (emialcontroler.text == '') {
        //             return;
        //           }
        //           BlocProvider.of<AuthsBloc>(context)
        //               .add(Resetevent(email: emialcontroler.text));
        //         },
        //         child: const Row(
        //           children: [
        //             Text('forget password'),
        //             // Image.asset(
        //             //   'assets/images/Google__G__logo.png',
        //             //   height: 20,
        //             //   width: 20,
        //             // ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
