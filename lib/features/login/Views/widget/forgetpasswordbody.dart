import 'package:commerce8/core/constant/assets.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/core/widget/customelevaterbutton.dart';
import 'package:commerce8/core/widget/customtextfield.dart';
import 'package:commerce8/features/login/manager/bloc/auths_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Forgetpasswordbody extends StatefulWidget {
  const Forgetpasswordbody({super.key});

  @override
  State<Forgetpasswordbody> createState() => _ForgetpasswordbodyState();
}

class _ForgetpasswordbodyState extends State<Forgetpasswordbody> {
  bool isloading = false;
  final GlobalKey<FormState> formkey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthsBloc, AuthsState>(
      listener: (context, state) {
        if (state is Authsloading) {
          var isloading = true;
        } else if (state is AuthsResetSucess) {
          // GoRouter.of(context).push(Goruouter.khomeView);

          isloading = false;
        } else if (state is AuthsLoginfailure) {
          isloading = false;
        }
      },
      builder: (context, state) => ModalProgressHUD(
        inAsyncCall: isloading,
        child: Form(
            key: formkey,
            child: ListView(
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
                  height: 40,
                ),
                Center(
                  child: Text(
                    'Forget Password',
                    style: Appstyles.font30semibold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    '--> Enter your Email',
                    style: Appstyles.font20,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                customtextfield(
                  icon: Icons.email,
                  hint: 'Email',
                  text: emailController,
                ),
                const SizedBox(
                  height: 40,
                ),
                Customelevaterbutton(
                  onpressed: () {
                    if (formkey.currentState!.validate()) {
                      BlocProvider.of<AuthsBloc>(context).add(
                        Resetevent(
                          email: emailController.text,
                        ),
                      );
                      // Navigator.pop(
                      //   context,
                      // );
                    }
                  },
                  title: 'Change your Password',
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    'Wait The Link in your account for change your password',
                    textAlign: TextAlign.center,
                    style: Appstyles.font20,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
