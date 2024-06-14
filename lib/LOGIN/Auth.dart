import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class User {
   final String uid;

  User({required this.uid});
  
}

class AuthBase{
  

  
  Future<void> register( String email , String password)async {
    final auth_result = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
     auth_result.user?.uid;

  }

  Future<void> login( String email , String password)async {
    final auth_result = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    auth_result.user?.uid;

  }
  Future<void> logout()async {
     await FirebaseAuth.instance.signOut();


  }
}



