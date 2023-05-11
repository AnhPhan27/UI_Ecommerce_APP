import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../validator.dart';

class EmailFormField extends StatelessWidget {
  EmailFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.icon,
    required this.emailController,
    required this.validator,
  });
  final String? labelText;
  final String? hintText;
  final Widget? icon;
  final String? Function(String?) validator;

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
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
