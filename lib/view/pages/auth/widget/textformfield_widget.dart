import 'package:flutter/material.dart';
import 'package:ui_retry/core/color/app_color.dart';
import 'package:ui_retry/core/utils/app_size.dart';

class TexFormFieldWidget extends StatelessWidget {
  const TexFormFieldWidget({
    super.key,
    required this.hintText,
    this.obsecureText = false,
    this.textInputType = TextInputType.text,
  });

  final String hintText;
  final bool obsecureText;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: context.height(5),
        bottom: context.height(15),
      ),
      child: TextFormField(
        keyboardType: textInputType,
        obscureText: obsecureText,
        cursorColor: AppColor.hintText,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: context.width(16),
            ),
            filled: true,
            fillColor: const Color(0xFF131411),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                context.width(6),
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColor.hintText,
              fontSize: context.width(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(
                context.width(6),
              ),
            )),
      ),
    );
  }
}
