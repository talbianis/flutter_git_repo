import 'package:flutter/material.dart';

import '../../core/const.dart';

MyTextField({
  required hintText,
  TextEditingController? controller,
  String Function(String?)? validator,
  TextInputType? keyboardType,
  bool obscureText = false,
}) =>
    Padding(
      padding: const EdgeInsets.all(PaddingS),
      child: TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: PrimaryLightColor,
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: Colors.transparent)),
          disabledBorder: InputBorder.none,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: Colors.transparent)),
        ),
      ),
    );
