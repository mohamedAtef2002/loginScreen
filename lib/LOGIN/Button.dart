import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final Color bgColor;


  Button({required this.textColor,required this.text,required this.onPressed,required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      child: ElevatedButton(

        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: bgColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
            )
        ),
        child: Text(
          text,
          style: GoogleFonts.alike(
            color: textColor,
            fontSize: 21 ,
          ),
        ),
      ),

    );
  }
}
