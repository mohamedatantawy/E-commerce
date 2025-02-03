import 'package:flutter/material.dart';

class customtextfield extends StatelessWidget {
  const customtextfield({
    super.key,
    required this.icon,
    required this.hint,
    this.onsub,
    required this.text,
    this.obscure = false,
  });
  final IconData icon;
  final TextEditingController text;
  final String hint;
  final Function(String?)? onsub;
  final bool obscure;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      validator: (value) {
        if (value!.isEmpty) {
          return 'this field is required';
        }
      },
      controller: text,
      onSaved: onsub,
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(icon),
        hintText: hint,
        labelText: hint,
        labelStyle: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        fillColor: Colors.white,
        border: outlinedecorationboreder(),
        enabledBorder: outlinedecorationboreder(),
        focusedBorder: outlinedecorationboreder(),
      ),
    );
  }

  OutlineInputBorder outlinedecorationboreder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(
        color: Colors.black,
      ),
    );
  }
}
