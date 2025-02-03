import 'package:commerce8/features/aboutus/View/aboutusView.dart';
import 'package:commerce8/features/help/View/helpView.dart';
import 'package:commerce8/features/home/presentation/View/homeView.dart';
import 'package:commerce8/features/login/Views/forgetpassword.dart';
import 'package:commerce8/features/login/Views/login.dart';
import 'package:commerce8/features/login/Views/signup.dart';
import 'package:commerce8/features/logout/View/logoutView.dart';
import 'package:commerce8/features/onboreding/presentation/View/onboredingView.dart';
import 'package:commerce8/features/productDetails/presentation/View/productView.dart';
import 'package:commerce8/features/profile/presentation/View/profileView.dart';
import 'package:commerce8/features/search/presentation/view/searchView.dart';
import 'package:commerce8/features/setting/presentation/View/settingView.dart';
import 'package:go_router/go_router.dart';

abstract class Gorouter2 {
  static const String klogin = '/loginView';
  static const String kstart = '/';
  static const String kforgetpassword = '/forgetView';
  static const String khelp = '/helpView';
  static const String kaboutus = '/aboutusView';
  static const String ksetting = '/settingView';
  static const String ksignup = '/signupView';
  static const String khomeView = '/homeView';
  static const String kprofileView = '/profileView';
  static const String klogout = '/logoutView';
  static const String ksearch = '/searchView';
  static const String kproductdetail = '/productdetailView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: kstart,
      builder: (context, state) => const Homeview(),
    ),
    GoRoute(
      path: klogout,
      builder: (context, state) => const Logoutview(),
    ),
    GoRoute(
      path: ksearch,
      builder: (context, state) => const Searchview(),
    ),
    GoRoute(
      path: ksetting,
      builder: (context, state) => const Settingview(),
    ),
    GoRoute(
      path: kaboutus,
      builder: (context, state) => const Aboutusview(),
    ),
    GoRoute(
      path: khelp,
      builder: (context, state) => const Helpview(),
    ),
    GoRoute(
      path: kprofileView,
      builder: (context, state) => const Profileview(),
    ),
    GoRoute(
      path: klogin,
      builder: (context, state) => const Login(),
    ),
    GoRoute(
      path: kforgetpassword,
      builder: (context, state) => const Forgetpassword(),
    ),
    GoRoute(
      path: ksignup,
      builder: (context, state) => const Signup(),
    ),
    GoRoute(
      path: khomeView,
      builder: (context, state) => const Homeview(),
    ),
    GoRoute(
      path: kproductdetail,
      builder: (context, state) => const Productview(),
    )
  ]);
}
