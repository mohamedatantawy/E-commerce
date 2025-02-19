import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/features/home/presentation/View/homeView.dart';
import 'package:commerce8/features/login/Views/widget/listViewlogin.dart';
import 'package:commerce8/features/login/manager/bloc/auths_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class loginbody extends StatefulWidget {
  const loginbody({
    super.key,
  });

  @override
  State<loginbody> createState() => _loginbodyState();
}

class _loginbodyState extends State<loginbody> {
  bool isloading = false;
  final TextEditingController emialcontroler = TextEditingController();
  final TextEditingController passwordcontroler = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthsBloc, AuthsState>(
      listener: (context, state) {
        if (state is Authsloading) {
          isloading = true;
        } else if (state is AuthsLoginSucess) {
          // GoRouter.of(context).push(Goruouter.khomeView);

          isloading = false;
          GoRouter.of(context).pushReplacement(Gorouter2.khomeView,extra: state.uil);
          // Navigator.pushReplacement(context,
          //     MaterialPageRoute(builder: (context) {
          //   return const Homeview();
          // }));
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(" this is email: is true"),
          ));
        } else if (state is AuthsLoginfailure) {
          isloading = false;
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(" error${state.emassage}"),
          ));
        }
      },
      builder: (context, state) => ModalProgressHUD(
        inAsyncCall: isloading,
        child: Form(
          key: formkey,
          child: ListViewofLogin(
              emialcontroler: emialcontroler,
              formkey: formkey,
              passwordcontroler: passwordcontroler),
        ),
      ),
    );
  }
}
