// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key, this.hintText,this.keyboardType,  this.obscureText = false, this.onChange});
  String? hintText;
  bool? obscureText;
  TextInputType? keyboardType;
  Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      obscureText: obscureText!, // show_Text or no
      keyboardType: keyboardType,
      onChanged: onChange,
      decoration: InputDecoration(
        
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}