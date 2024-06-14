import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Button.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({Key? key}) : super(key: key);

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Container(
        child: Column(
          children: [
            Image(image: AssetImage("assets/images/12.png"),height: 500,width: 600, ),

            Text("Get Things Done With TODo"
                ,style: GoogleFonts.playball(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              color: Colors.blue.shade700,
                fontWeight: FontWeight.bold,
            ),),



            SizedBox(height: 70,),
            Button(
              onPressed: () {
                Navigator.of(context).pushNamed('login');
            },
              textColor: Colors.white,
              bgColor: Colors.blue,
              text: "Login",
            ),
            SizedBox(height: 20,),
            Button(
              onPressed: () {
                Navigator.of(context).pushNamed('signup');
              },
              textColor: Colors.white,
              bgColor: Colors.blue,
              text: "Create Account ",
            ),

          ],
        ),
      ),
    );
  }
}
