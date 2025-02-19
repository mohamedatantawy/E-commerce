import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commerce8/features/login/model/usersmodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'auths_event.dart';
part 'auths_state.dart';

class AuthsBloc extends Bloc<AuthsEvent, AuthsState> {
  AuthsBloc() : super(AuthsInitial()) {
   
    on<AuthsEvent>((event, emit) async {
      
      if (event is LoginEvent) {
         
        emit(Authsloading());
        try {
          final credential =
              await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: event.email,
            password: event.password,
          );
          emit(AuthsLoginSucess(uil: credential.user!.uid));
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            emit(AuthsLoginfailure(emassage: 'No user found for that email.'));
            print('No user found for that email.');
          } else if (e.code == 'wrong-password') {
            emit(AuthsLoginfailure(
                emassage: 'Wrong password provided for that user.'));
            print('Wrong password provided for that user.');
          } else {
            emit(AuthsLoginfailure(emassage: 'error.'));
            print('Wrong password provided for that user.');
          }
        }
      } else if (event is RegistorEvent) {
        try {
          final credential =
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: event.email,
            password: event.password,
          );
          CollectionReference users =
              FirebaseFirestore.instance.collection('users');
          User? user = credential.user;
         String uil;
          // Usersmodel usersmodel;
          if (user != null) {
            uil= user.uid;
            users.doc(user.uid).set({
              'name': event.usersmodel.name,
              'email': event.usersmodel.email,
              'phone': event.usersmodel.phone,
              'createAt': event.usersmodel.time,
            });
          }
          emit(AuthsRegistorSucess());
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            emit(AuthsLoginfailure(
                emassage: 'The password provided is too weak.'));
            print('The password provided is too weak.');
          } else if (e.code == 'email-already-in-use') {
            emit(AuthsLoginfailure(
                emassage: 'The account already exists for that email.'));
            print('The account already exists for that email.');
          }
        } catch (e) {
          emit(AuthsLoginfailure(emassage: e.toString()));
          print(e);
        }
      } else if (event is Resetevent) {
        try {
          await FirebaseAuth.instance
              .sendPasswordResetEmail(email: event.email);

          emit(AuthsResetSucess());
        } on Exception catch (e) {
          emit(AuthsResetfailure(emassage: e.toString()));
        }
      }
    });
  }
}
