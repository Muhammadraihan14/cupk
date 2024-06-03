// ignore_for_file: must_be_immutable

import 'package:cupk_connect/utils/constans.dart';
import 'package:flutter/material.dart';

class Formlogin extends StatelessWidget {
  TextEditingController? controller;
  Widget? prefixIcon;
  Widget? suffixIcon;
  String? suffixText;
  String? hintText;
  int? maxLengh;
  TextInputType? type;
  bool password;
  Color textColor;
  // InputDecoration? inputDecoration;
  String? Function(String?)? validator;
  Function(String)? onChanged;
  Function()? onTap;
  bool? enabled;
  Formlogin({
    this.validator,
    this.onTap,
    this.enabled,
    this.onChanged,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixText,
    this.hintText,
    this.maxLengh,
    this.type,
    // this.inputDecoration,
    required this.password,
    required this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // enabled: enabled,
      onTap: onTap,
      onChanged: onChanged,
      maxLength: maxLengh,
      validator: validator,
      obscureText: password,
      keyboardType: type,
      controller: controller,
      style: styleText(textColor, 13, FontWeight.w400, TextDecoration.none),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: sPrimaryColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: prefixIcon,
        suffixText: suffixText ?? "",
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(color: blackColor),
      ),
    );
  }
}
