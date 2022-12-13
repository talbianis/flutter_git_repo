import 'package:flutter/material.dart';

//* login text field
TextFiled({
  required TextEditingController controller,
  TextInputType? textInputType,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: textInputType,
    );
