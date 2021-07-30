
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/AllText.dart';
import 'package:project/main.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
        Scaffold(
        backgroundColor: white,
        body: Padding(
        padding: const EdgeInsets.all(12.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(
    height: 20,
    ),
    Container(
//child: Image.asset("assets/Introslider/donateimage.jpg",
    child: Image.asset(
    "assets/Introslider/signup (2).jpg",
    height: 290,
    width: 700,
    ),
    ),
      SizedBox(
        height: 10,
      ),
      ct.boldText(
          text: LOGIN,
          size: 38,
          color: blue,
          fontweight: FontWeight.bold
        // alignment: TextAlign.left,

      ),

      SizedBox(
        height: 15,
      ),
      tf.textField(
     //   labelText: EMAIL,
        hintText: EMAIL,
        inputType: TextInputType.numberWithOptions(),
        hideText: false,
        prefix: Icon(
          Icons.mail,
          color: Colors.grey,
          size: 20,
          textDirection: TextDirection.rtl,
        ),
      ),
      SizedBox(
        height: 22,
      ),
      tf.textField(
          suffix: Icon(
            Icons.remove_red_eye,
            color: Colors.grey,
            size: 20,
          ),
          prefix: Icon(
            Icons.password,
            color: Colors.grey,
            size: 20,
          ),
         // labelText: PASSWORD,
          hintText: PASSWORD,
          inputType: TextInputType.numberWithOptions(),
          hideText: true),
      SizedBox(height: 30,),
      cb.simpleButton(
        text: "LogIn",
        height: 25,
        width: 10,
        textSize: 22,
onPressed: (){}
      ),
            SizedBox(height: 10,),
      ct.regularText(
        text: "Or,login with...",
        size: 12,
        color: Colors.grey,
        alignment: TextAlign.center
      ),
    ]

    )
    )

)
    );
  }
  }