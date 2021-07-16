import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  double borderRadius = 15.0,
  Color borderColor = Colors.blue,
  Color colorTextButton = Colors.white,
  required var function,
  required String text,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      border: Border.all(
        color: borderColor,
      ),
      color: background,
    ),
    width: width,
    height: 50.0,
    child: MaterialButton(
      height: 50.0,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          letterSpacing: 0.5,
          color: colorTextButton,
        ),
      ),
      onPressed: function,
    ),
  );
}

Widget defaultInputField ({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required IconData prefixIcon,
  var suffixIcon,
  var validate,
  var funSuffixIcon,
  bool isPassword = false,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      border: Border.all(
        color: Colors.grey,
      ),
    ),
    padding: EdgeInsets.only(bottom: 10, top: 10),
    child: TextFormField(
      controller: controller,
      obscureText: isPassword,
      keyboardType: type,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.grey[500],
        ),
        prefixIcon: Icon(prefixIcon),
        border: InputBorder.none,
        suffixIcon: suffixIcon != null ? IconButton(onPressed: funSuffixIcon,icon: Icon(suffixIcon,),) : null,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding: EdgeInsets.only(left: 20, right: 15),
      ),
    ),
  );
}
