import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/AllText.dart';
import 'package:project/CustomWidgets/CustomButoonWidget.dart';
import 'package:project/CustomWidgets/CustomTextWidget.dart';
import 'package:project/CustomWidgets/CustomTextfieldWidget.dart';
import 'package:project/Screen/IntroSlider.dart';
import 'package:project/Screen/Login.dart';
import 'package:project/Screen/LoginScreen.dart';
import 'package:project/Screen/SignUpScreen.dart';

import 'package:project/Screen/SplashScreen.dart';


String THEME_TYPE="light";
String LANGUAGE_TYPE="en";

void   main () async {

   WidgetsFlutterBinding.ensureInitialized();

   await Firebase.initializeApp();
  runApp(MyApp());
}
const Color blue= Color(0xff0A5688);
const Color white=Color(0xffFFFFFF);
const Color yellow=Color(0xffF9D162);
const Color orange=Color(0xffF3954F);
const Color green=Color(0xff6BC6A5);
const Color black=Colors.black;




CustomTextWidget ct = CustomTextWidget();
CustomButtons cb = CustomButtons();
MyTextField tf = MyTextField();



class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:(IntroSlider()
      ) ,
      theme: ThemeData(
        accentColor: white
      ),
    );
  }
}
