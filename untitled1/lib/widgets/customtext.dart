import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {

  String ? text;
  double? font_size;
  FontWeight? font_weight;
  TextAlign? text_align;
  Color ?color;
  CustomText({this.text, this.font_size, this.font_weight, this.text_align,this.color});

  @override
  Widget build(BuildContext context) {
    return   Text(
      "$text",
      style: TextStyle(fontSize:font_size,fontWeight: font_weight ,color: color),
      textAlign: text_align,

    );
  }


}