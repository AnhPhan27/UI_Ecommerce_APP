import 'package:flutter/material.dart';
import 'package:ui_ecommerce_app/constant.dart';
import 'package:ui_ecommerce_app/size_config.dart';

class CheckBoxRow extends StatefulWidget {
  const CheckBoxRow({super.key});

  @override
  State<CheckBoxRow> createState() => _CheckBoxRowState();
}

class _CheckBoxRowState extends State<CheckBoxRow> {
  bool? isChecked = false;
  void newBool(newBool) {
    setState(() {
      isChecked = newBool;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: newBool,
          activeColor: kPrimaryColor,
        ),
        const Text('Remember me'),
        Spacer(),
        // SizedBox(
        //   width: getProportionateScreenWidth(80),

        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/forgot_password');
          },
          child: Text(
            'Forgot Password',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
