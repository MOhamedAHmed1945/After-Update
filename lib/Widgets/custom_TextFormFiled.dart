import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  CustomTextFormFiled({
    Key? key,
    required this.controller,
    required this.textInputType,
    required this.icon,
    required this.text,
  }) : super(key: key);
  TextInputType textInputType;
  TextEditingController? controller;
  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5.5),
          ),
          prefixIcon: Icon(
            icon,
            color: Colors.blue,
            size: 20,
          ),
          hintText: text,
          hintStyle: TextStyle(
            color: Colors.blue,
            fontSize: 20,
          ),
          filled: true,
          fillColor: Colors.blue[50],
        ),
      ),
    );
    ;
  }
}
