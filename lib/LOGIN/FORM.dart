import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Auth.dart';
import 'Button.dart';

class Fo extends StatefulWidget {
  const Fo({Key? key, }) : super(key: key);

  @override
  State<Fo> createState() => _FoState();
}

class _FoState extends State<Fo> {
  bool visible = true ;
  final _formKey = GlobalKey<FormState>();
  String _email = '' , _password = '';
  AuthBase authBase = AuthBase();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100, left: 10,right: 10),
      child: Column(
        children: [
          Form(
            key: _formKey,
              child:
            Column(
              children: [
                TextFormField(
                  onChanged: (value) => _email = value ,
                  validator: (value) => value!.length < 20 ? "enter a valid email" : null,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Enter Your Email',
                    hintText: 'test@gmail.com'
                  ),
                ),
                SizedBox(height: 30,),
                TextFormField(
                  onChanged: (value) => _password = value ,
                  validator: (value) => value!.length < 6 ? "password must be large than 6 character" : null,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: visible,
                  decoration: InputDecoration(
                      labelText: 'Enter Your Password',
                    suffixIcon:IconButton(onPressed:(){
                       visible = !visible ;
                      print(visible);
                      setState(() {});
                    },
                        icon: visible == true ? Icon(Icons.visibility) : Icon(Icons.visibility_off)),

                  ),
                ),
                SizedBox(height: 40,),
                Button(
                  onPressed: () async{
                    if(_formKey.currentState!.validate()){
                     await authBase.login(_email, _password);

                    };
                  },
                  textColor: Colors.white,
                  bgColor: Colors.blue.shade700,
                  text: "Login ",
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
