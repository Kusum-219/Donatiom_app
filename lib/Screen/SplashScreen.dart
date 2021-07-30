import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/Screen/IntroSlider.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
   void initstate(){
    super.initState();
   checkpreferences();

  }
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: body(),
    ));
  }
  body(){
    return Stack(
      children: [Center(
       // child: Image.asset("assets/C:/Users/HP/StudioProjects/project/assests/photo-1618588507085-c79565432917.jpg",height: 300,width: 200,),

      ),],
    );
  }


  callLogingScreen(){
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>IntroSlider() ));
    });
  }
  callSignin(){
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>IntroSlider() ));
    });
  }
  checkpreferences()async{
    SharedPreferences sp= await SharedPreferences.getInstance();
    if(sp.getBool("isUserLoggedIn")){
      callSignin();
    }
    else
      callLogingScreen();
  }

}

