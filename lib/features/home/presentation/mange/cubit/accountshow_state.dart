part of 'accountshow_cubit.dart';

@immutable
sealed class AccountshowState {}

final class AccountshowInitial extends AccountshowState {}

final class Accountshowloading extends AccountshowState {}

final class Accountshowsuccess extends AccountshowState {
  final Accountmodels accountmodels;

  //final String name;
  //final String email;
  //final String phone;

  Accountshowsuccess( {required this.accountmodels,
   // required this.name,required this.email, required this.phone
   });


}

final class Accountshowfailure extends AccountshowState {
  final String emassage;

  Accountshowfailure({required this.emassage});
}
