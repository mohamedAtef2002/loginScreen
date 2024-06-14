import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Button.dart';
import 'FORM.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.only(top: 60,left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello Again!!",style: TextStyle(
                      fontSize: 40,
                      color: Colors.white
                  ),),
                ],),
                       Padding(
                           padding: const EdgeInsets.only(right: 17,top: 60),
                         child: SingleChildScrollView(
                           child: Container(
                            height: 480,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),

                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text("Login",style: TextStyle(
                                       color: Color.fromRGBO(39, 35,32, 1),
                                       fontSize: 35,
                                       fontWeight: FontWeight.w900 ),),
                                   SizedBox(height: 10,),
                                   Fo(),


                                 ],
                               ),
                             ),
                            ),
                         ),
                       ),

                      

                ],
              ),
        ),
      ),

    );
  }
}
