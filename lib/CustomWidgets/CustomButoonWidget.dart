import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../main.dart';

class CustomButtons{

  simpleButton({dynamic text,double width,double height,BuildContext context, VoidCallback onPressed,double textSize, bool isRegular, double padding, TextDecoration decorations}){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: blue,
          onPrimary:orange ,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          )
      ),
      //minWidth: MediaQuery.of(context).size.width,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(padding ?? 12.0),
          child: Text(text is Map? text[LANGUAGE_TYPE]:text,

            style: TextStyle(
              color: white,
              fontFamily: isRegular == null || !isRegular ? 'Semibold' : 'Regular',
              fontSize: textSize ?? 15,

              // decoration: BoxDecoration()
            ),
          ),
        ),
      ),
      //color: GREEN,
      onPressed: onPressed,
    );

  }



  // transparentButton({dynamic text,double width,double height,BuildContext context,Color textColor}){
  //   return Container(
  //     width: width ?? MediaQuery.of(context).size.width,
  //
  //     child: Center(
  //       child: Padding(
  //         padding: const EdgeInsets.all(14.0),
  //         child: Text(text is Map? text[LANGUAGE_TYPE]:text,
  //
  //           style: TextStyle(
  //             color: textColor ?? BLACK,
  //             fontFamily: 'Semibold',
  //             fontSize: 15,
  //           ),
  //         ),
  //       ),
  //     ),
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(8)
  //     ),
  //   );
  //
  // }

  iconButton({dynamic text,double width,double height,BuildContext context, VoidCallback onPressed, bool isOutlineButton, Widget icon}){
    return InkWell(
      onTap: onPressed ?? null,
      child: Container(
        width: width??MediaQuery.of(context).size.width,

        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon ?? Container(),
                Text(text is Map? text[LANGUAGE_TYPE]:text,

                  style: TextStyle(
                    color: isOutlineButton ? Colors.black : white,
                    fontFamily: 'Semibold',
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: !isOutlineButton ? white : black,
          borderRadius: BorderRadius.circular(8),
          border: isOutlineButton ? Border.all(color: orange) : Border.all(color: Colors.transparent),
        ),
      ),
    );

  }

  // chipButton({Color color, Icon icon, dynamic text, bool isActive, VoidCallback onPressed, double width, Color textColor, double textSize}){
  //   return InkWell(
  //     borderRadius: BorderRadius.circular(width * 0.1),
  //     onTap: onPressed,
  //     child: Container(
  //       decoration: BoxDecoration(
  //         color: isActive ? color : Colors.transparent,
  //         borderRadius: BorderRadius.circular(width * 0.1),
  //         border: !isActive ? Border.all(color: Blue_GREY, width: 1) : null,
  //       ),
  //       child: Padding(
  //         padding: EdgeInsets.fromLTRB(width * 0.03, width * 0.015, width * 0.03, width * 0.015),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             icon ?? SizedBox(),
  //             icon == null ? SizedBox() : SizedBox(
  //               width: width * 0.01,
  //             ),
  //             ct.semiboldText(
  //                 text: text,
  //                 color: isActive ? textColor : Blue_GREY,
  //                 size: textSize
  //             ),
  //
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

}