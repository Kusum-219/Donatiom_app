
import 'package:flutter/material.dart';
import 'package:project/CustomWidgets/custom_Themes.dart';
import 'package:project/main.dart';

class MyTextField {

  textField({
    TextEditingController controller,
    dynamic hintText,
    dynamic labelText,
    Function validator,
    TextInputType inputType,
    bool hideText,
    Widget suffix,
    Widget prefix,
    Function onChange,}) {

    return TextFormField(

      controller: controller,

      obscureText: hideText,
      keyboardType: inputType,
      onChanged: onChange,
      validator: validator,

      style: TextStyle(
        color: TEXT_COLOR[THEME_TYPE],
        fontSize: 15,
      ),
      decoration: InputDecoration(

        border: OutlineInputBorder(borderSide: BorderSide(color: blue)),
        labelStyle: TextStyle(
          color: LABEL_COLOR[THEME_TYPE],
        ),
        suffix: suffix,
        prefix: prefix,
        hintStyle: TextStyle(
          color: TEXT_COLOR[THEME_TYPE],
        ),
        hintText: hintText is Map ? hintText[LANGUAGE_TYPE] : hintText,
        labelText: labelText is Map ? labelText[LANGUAGE_TYPE] : labelText,
      ),
    );
  }

  toggleObscureText(bool hideText){
    hideText = !hideText;
  }

}