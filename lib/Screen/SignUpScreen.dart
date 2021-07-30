import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/AllText.dart';
import 'package:project/main.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  "assets/Introslider/donateIcon.jpg",
                  height: 260,
                  width: 500,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ct.boldText(
                  text: SIGNUP,
                  size: 38,
                  color: blue,
                  fontweight: FontWeight.bold
                  // alignment: TextAlign.left,

                  ),
              SizedBox(
                height: 15,
              ),
              tf.textField(
                //  labelText: YOUR_NAME,
                  hintText: YOUR_NAME,
                  inputType: TextInputType.numberWithOptions(),
                  hideText: false,
                  prefix: Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 20,
                  )),
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
                height: 15,
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
              SizedBox(
                height: 15,
              ),
              tf.textField(
              //    labelText: CONFIRM_PASSWORD,
                  hintText: CONFIRM_PASSWORD,
                  inputType: TextInputType.numberWithOptions(),
                  hideText: true,
                  prefix: Icon(
                    Icons.password,
                    color: Colors.grey,
                    size: 20,
                  ),
                suffix: Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              tf.textField(
            //      labelText: CONTACT,
                  hintText: CONTACT,
                  inputType: TextInputType.numberWithOptions(),
                  hideText: false,
                  prefix: Icon(
                    Icons.phone,
                    color: Colors.grey,
                    size: 20,
                  )

              ),
            ],
          ),
        ),
      ),
    );
  }
}
