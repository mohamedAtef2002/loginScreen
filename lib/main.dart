import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'LOGIN/Login.dart';
import 'LOGIN/Logo.dart';
import 'LOGIN/Sign up.dart';
import 'LOGIN/Welcom.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(101, 131, 97, 1),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xfff2f9fe),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(100),

          ),
        ),
      ),

      home: Logo_screen(),


      routes: {
        'login' : (context) => LoginScreen(),
        'signup' :(context) => SignupScreen(),
        'welcome' :(context) => WelcomScreen()
       // 'home' :(context) => Home(),
      },



    );
  }
}


