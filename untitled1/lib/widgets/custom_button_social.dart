import 'package:flutter/material.dart';



import 'customtext.dart';
class Rasied_Button extends StatelessWidget {
  String ? text;
  var font_size;
  var on_press;
  Color ?color;
  var shape;
  Color ?color_text;
  Rasied_Button(
      {this.text,
        this.font_size,
        this.on_press,
        this.color,
        this.shape,
        this.text_align,
        this.color_text
      });

  TextAlign? text_align;
  @override
  Widget build(BuildContext context) {
    return  RaisedButton(
        shape: shape,
        color: color,
        textColor: Colors.white,
        child: Container(
          height: 50.0,
          child: Center(
            child: CustomText(
              text: text,
              font_size: font_size,
              color: color_text,
              font_weight: FontWeight.bold,
            ),
          ),
        ),
        onPressed:  on_press
    );
  }
}