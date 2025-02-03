import 'package:commerce8/core/constant/assets.dart';
import 'package:commerce8/core/function/Gorouter2.dart';
import 'package:commerce8/core/function/styles.dart';
import 'package:commerce8/core/widget/customelevaterbutton.dart';
import 'package:commerce8/features/login/Views/login.dart';
import 'package:commerce8/features/onboreding/model/onboredinmodel.dart';
import 'package:commerce8/features/onboreding/presentation/View/widget/DataofpageView.dart';
import 'package:commerce8/features/onboreding/presentation/View/widget/dotItemActive.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Onboredingbody extends StatefulWidget {
  const Onboredingbody({super.key});

  @override
  State<Onboredingbody> createState() => _OnboredingbodyState();
}

class _OnboredingbodyState extends State<Onboredingbody> {
  int currentpage = 0;
  PageController pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageController.addListener(() {
      currentpage = pageController.page!.toInt();
      setState(() {});
    });
  }

  final List<Onboredinmodel> onbored = const [
    Onboredinmodel(
      title: 'Welcome you',
      subtitle:
          'We have many product choose your product you want commerce shop ',
      image: Assets.assetsImagesOnboardingone,
    ),
    Onboredinmodel(
      title: 'Easy & safe payment',
      subtitle:
          'We have many product choose your product you want commerce shop ',
      image: Assets.assetsImagesOnboardingtwo,
    ),
    Onboredinmodel(
      title: 'Easy & safe payment',
      subtitle:
          'We have many product choose your product you want commerce shop ',
      image: Assets.assetsImagesOnboardingthree,
    ),
    Onboredinmodel(
      title: 'Easy & safe payment',
      subtitle:
          'We have many product choose your product you want commerce shop ',
      image: Assets.assetsImagesOnboardingfour,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          // PageView.builder(
          //   controller: pageController,
          //   itemCount: onbored.length,
          //   itemBuilder: (context, index) {
          //     return dataofpageView(onbored: onbored);
          //   },
          // ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.7,
            child: ExpandablePageView(
              controller: pageController,
              children: List.generate(
                onbored.length,
                (index) {
                  return dataofpageView(onbored: onbored[index]);
                },
              ),
            ),
          ),

          Dotitemactive(number: currentpage),
          const SizedBox(
            height: 25,
          ),
          Customelevaterbutton(
              onpressed: () {
                navigatorfrombutton(context);
              },
              title: 'Continue'),
          const SizedBox(
            height: 25,
          ),
          TextButton(
              onPressed: () {
                GoRouter.of(context).pushReplacement(Gorouter2.klogin);
                // Navigator.pushReplacement(context,
                //     MaterialPageRoute(builder: (context) {
                //   return const Login();
                // }));
              },
              child: Text(
                'Skip',
                style: Appstyles.font25.copyWith(
                  color: Colors.black,
                ),
              ))
        ],
      ),
    );
  }

  void navigatorfrombutton(BuildContext context) {
    if (currentpage == 0) {
      setState(() {
        pageController.animateToPage(
          1,
          duration: const Duration(
            milliseconds: 600,
          ),
          // currentpage++,
          curve: Curves.ease,
        );
      });
    } else if (currentpage == 1) {
      setState(() {
        pageController.animateToPage(
          2,
          duration: const Duration(
            milliseconds: 600,
          ),
          // currentpage++,
          curve: Curves.ease,
        );
      });
    } else if (currentpage == 2) {
      setState(() {
        pageController.animateToPage(
          3,
          duration: const Duration(
            milliseconds: 600,
          ),
          // currentpage++,
          curve: Curves.ease,
        );
      });
    } else {
      GoRouter.of(context).pushReplacement(Gorouter2.klogin);
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      //   return const Login();
      // }));
    }
  }
}
