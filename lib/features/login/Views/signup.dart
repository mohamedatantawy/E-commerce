import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/features/login/Views/widget/signupbody.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Sign Up',
          style: Appstyles.font25.copyWith(color: Colors.black),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Signupbody(),
      ),
    );
  }
}

// import 'package:commerce/features/login/Views/login.dart';
// import 'package:commerce/core/widget/customtextfield.dart';
// import 'package:commerce/features/login/manager/bloc/auths_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class Signup extends StatefulWidget {
//   const Signup({super.key});

//   @override
//   State<Signup> createState() => _SignupState();
// }

// class _SignupState extends State<Signup> {
//   //final supa = Supabase.instance.client;
//   final emialcontroler = TextEditingController();
//   final passwordcontroler = TextEditingController();
//   bool isloading = false;
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AuthsBloc, AuthsState>(
//       listener: (context, state) {
//         if (state is AuthsRegistorloading) {
//           isloading = true;
//         } else if (state is AuthsRegistorSucess) {
//           isloading = false;
//           Navigator.push(context, MaterialPageRoute(builder: (context) {
//             return  Container();
//           }));
//         }
//       },
//       builder: (context, state) {
//         return Scaffold(
//           backgroundColor: Colors.blue,
//           body: Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//               const  SizedBox(
//                   height: 70,
//                 ),
//                 Center(
//                   child: Image.asset(
//                     'assets/images/logo (1).png',
//                     height: 100,
//                   ),
//                 ),
//               const  Center(
//                   child: Text(
//                     'Commerce',
//                     style: TextStyle(fontSize: 40),
//                   ),
//                 ),
//               const  SizedBox(
//                   height: 20,
//                 ),
//                const Text(
//                   'Email',
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 customtextfield(
//                   text: emialcontroler,
//                   icon: Icons.email,
//                   hint: 'Email',
//                 ),
//               const  SizedBox(
//                   height: 20,
//                 ),
//               const  Text(
//                   'password',
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 customtextfield(
//                   text: passwordcontroler,
//                   icon: Icons.lock,
//                   hint: 'password',
//                 ),
//                const SizedBox(
//                   height: 50,
//                 ),
//                 Center(
//                   child: ElevatedButton(
//                     onPressed: () async {
//                       // final user = await supa.auth.signUp(
//                       //     password: passwordcontroler.text,

//                       //     email: emialcontroler.text);
//                       BlocProvider.of<AuthsBloc>(context).add(RegistorEvent(
//                           password: passwordcontroler.text,
//                           email: emialcontroler.text));
//                       ScaffoldMessenger.of(context).showSnackBar(const  SnackBar(
//                         content: Text(" this is email:"),
//                       ));
//                     },
//                     child: const Text('Sign up'),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                   const  Text(
//                       "You have an account? ",
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     TextButton(
//                         onPressed: () {
//                           Navigator.push(context,
//                               MaterialPageRoute(builder: (context) {
//                             return Login();
//                           }));
//                         },
//                         child:const Text(
//                           "login",
//                           style: TextStyle(fontSize: 20),
//                         )),
//                   ],
//                 ),

//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
