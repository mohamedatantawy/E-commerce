import 'package:commerce8/features/login/Views/widget/signuplistView.dart';
import 'package:commerce8/features/login/manager/bloc/auths_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Signupbody extends StatefulWidget {
  const Signupbody({super.key});

  @override
  State<Signupbody> createState() => _SignupbodyState();
}

class _SignupbodyState extends State<Signupbody> {
  bool isloading = false;
  final TextEditingController emialcontroler = TextEditingController();
  final TextEditingController passwordcontroler = TextEditingController();
  final TextEditingController namecontroler = TextEditingController();
  final TextEditingController confirmpasswordcontroler =
      TextEditingController();
  final TextEditingController phonecontroler = TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthsBloc, AuthsState>(
      listener: (context, state) {
        if (state is Authsloading) {
          isloading = true;
        } else if (state is AuthsRegistorSucess) {
          // GoRouter.of(context).push(Goruouter.khomeView);

          isloading = false;
          
          GoRouter.of(context).pop();
        } else if (state is AuthsRegistorfailure) {
          isloading = false;
        }
      },
      builder: (context, state) => ModalProgressHUD(
        inAsyncCall: isloading,
        child: Form(
          key: formkey,
          child: ListViewofSignup(
            formkey: formkey,
            confirmpasswordcontroler: confirmpasswordcontroler,
            emialcontroler: emialcontroler,
            namecontroler: namecontroler,
            passwordcontroler: passwordcontroler,
            phonecontroler: phonecontroler,
          ),
        ),
      ),
    );
  }
}
