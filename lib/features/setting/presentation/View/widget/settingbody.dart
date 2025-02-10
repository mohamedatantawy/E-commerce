import 'package:commerce8/core/function/styles.dart';
import 'package:flutter/material.dart';

class Settingbody extends StatefulWidget {
  const Settingbody({super.key});

  @override
  State<Settingbody> createState() => _SettingbodyState();
}

class _SettingbodyState extends State<Settingbody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                'Commen',
                style: Appstyles.font20,
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue,
              child: Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  const Icon(Icons.language),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Language',
                    style: Appstyles.font23,
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                        Center(
                          child: Dialog(
                          insetAnimationDuration: Duration(
                            seconds: 1,
                          ),
                          backgroundColor: Colors.black,
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.amber),
                          ),
                                                ),
                        );
                      setState(() {
                      
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                          'English',
                          style: Appstyles.font18,
                        ),
                        const Icon(Icons.arrow_drop_down_outlined),
                      ],
                    ),
                  ),
                  // const Icon(Icons.arrow_drop_down_outlined),
                ],
              ),
            ),
            Container(
              height: 60,
              color: Colors.blue,
              child: Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  const Icon(Icons.dark_mode_outlined),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Dark or light Theme',
                    style: Appstyles.font23,
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                    
                    },
                    child: Row(
                      children: [
                        Text(
                          'Light',
                          style: Appstyles.font18,
                        ),
                        const Icon(Icons.arrow_drop_down_outlined),
                      ],
                    ),
                  ),
                  // const Icon(Icons.arrow_drop_down_outlined),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
