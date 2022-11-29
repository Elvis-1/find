import 'package:find/widgets/button.dart';
import 'package:find/widgets/main_logo.dart';
import 'package:find/widgets/textfield_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: height,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              // app logo
              MainLogo(
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: height * 0.03,
              ),
              //text logo
              Image.asset(
                'assets/findAJob.png',
                height: height * 0.07,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              // textfields
              TextFieldContainer(hint: 'first name'),
              SizedBox(
                height: height * 0.02,
              ),
              TextFieldContainer(hint: 'last name'),
              SizedBox(
                height: height * 0.02,
              ),
              TextFieldContainer(hint: 'email'),
              SizedBox(
                height: height * 0.02,
              ),

              TextFieldContainer(hint: 'password'),
              SizedBox(
                height: height * 0.04,
              ),
              Button(
                text: 'Sign Up',
                textColor: 0xFFFFFFFF,
                backgroundColor: 0xFFD93030,
                width: double.infinity,
                height: height * 0.08,
              ),
              Row(
                children: [
                  Text('Have an Account Yet?'),
                  TextButton(
                      onPressed: null,
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.red),
                      )),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
