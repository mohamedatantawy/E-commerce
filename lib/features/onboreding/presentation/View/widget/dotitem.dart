import 'package:flutter/material.dart';

class Dotitem extends StatelessWidget {
  const Dotitem({super.key, required this.active});
  final bool active;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 8,
      width: active ? 30 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: active ? Colors.blue : Colors.grey[300],
      ),
    );
  }
}
