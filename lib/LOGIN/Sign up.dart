import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_project/LOGIN/signform.dart';

import 'Button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
       body:
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 13),
         child: SingleChildScrollView(
           child: Container(
              height: 650,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sign up",style: TextStyle(
                          color: Color.fromRGBO(39, 35,32, 1),
                          fontSize: 35,
                          fontWeight: FontWeight.w900 ),
                      ),

                      signForm(),




                    ],
                  ),
                ),
              ),
            ),
         ),
       )

    );

  }
}
