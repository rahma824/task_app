import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  String hintText;
  bool obscureText;
  CustomFormField({required this.hintText,this.obscureText=false});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        obscureText: obscureText,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$hintText is required';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 18),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 12),
          errorStyle: const TextStyle(fontSize: 12),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(33),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 237, 235, 235), width: 55),
          ),
        ),
      ),
    );
  }
}
