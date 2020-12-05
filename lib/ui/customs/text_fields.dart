import 'package:flutter/material.dart';

class CustomTextFormfield extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyBoardInputtype;
  final bool obscure;
  final String labelName;

  const CustomTextFormfield(
      {Key key,
      this.controller,
      this.labelName,
      this.keyBoardInputtype,
      this.obscure = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Color(0xFFFF691C).withOpacity(0.05),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Center(
        child: TextField(
          controller: controller,
          keyboardType: keyBoardInputtype,
          obscureText: obscure,
          cursorColor: Color(0xFFFF691C),
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            hintText: labelName,
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: .8),
            ),
          ),
        ),
      ),
    );
  }
}
