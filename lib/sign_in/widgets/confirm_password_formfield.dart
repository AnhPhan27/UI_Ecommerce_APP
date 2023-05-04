import 'package:flutter/material.dart';

import '../../size_config.dart';

class ConFirmPassWordFormField extends StatelessWidget {
  const ConFirmPassWordFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.icon,
    required this.validator,
    required this.controller,
  });
  final String? labelText;
  final String? hintText;
  final Widget? icon;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        // enabledBorder: InputBorder.none,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
        labelText: labelText,
        hintText: hintText,

        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: icon,
      ),
    );
  }
}
