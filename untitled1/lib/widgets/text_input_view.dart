import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {

  TextInputType ? type;
  var text;
  var font_size_label;
  var font_size_hint;
  var font_size;
  var obscure;
  var controller;
  CustomTextInput(
      {this.type,
        this.text,
        this.font_size_label,
        this.font_size_hint,
        this.font_size,
        this.obscure=false,
        this.font_weight,
        this.controller});

  FontWeight? font_weight;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      keyboardType: type,
      controller: controller,
      decoration: InputDecoration(

        labelText: "$text",
        labelStyle: TextStyle(
            fontSize: font_size_label,
            color:Colors.black,
            fontWeight: FontWeight.bold
        ),
        hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: font_size_hint
        ),
      ),
      style: TextStyle(fontSize: font_size),
    );
  }
}