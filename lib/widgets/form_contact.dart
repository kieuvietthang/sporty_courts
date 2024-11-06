import 'package:flutter/material.dart';
import 'package:sporty_courts/constants/colors.dart';
import 'package:sporty_courts/constants/values.dart';

class FormContact extends StatelessWidget {
  TextEditingController? controller;
  String labelText;
  String? hintText;
  double? bottomPadding;
  int? maxLines;
  Function(String)? onChanged;
  Function(String?)? onSaved;
  String? Function(String?)? validator;
  TextInputType? textInputType;
  AutovalidateMode? autovalidateMode;
  Color? colorBorder;

  FormContact(
      {super.key,
      this.onChanged,
      required this.controller,
      required this.labelText,
      this.validator,
      this.textInputType,
      this.onSaved,
      this.autovalidateMode,
      this.hintText,
      this.bottomPadding,
      this.colorBorder,
      this.maxLines = null});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(AppValue.width(context) * (40 / 375), 20,
          AppValue.width(context) * (40 / 375), 0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: AppColors.gray),
          border: const OutlineInputBorder(),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(color: AppColors.lightGray, width: 0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(color: AppColors.lightGray, width: 0),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          contentPadding: EdgeInsets.fromLTRB(
              AppValue.width(context) * (20 / 375),
              0,
              AppValue.width(context) * (20 / 375),
              0),
        ),
      ),
    );
  }
}
