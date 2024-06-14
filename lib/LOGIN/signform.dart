

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_project/LOGIN/Auth.dart';

import 'userModel.dart';
import 'Button.dart';

class signForm extends StatefulWidget {
  const signForm({Key? key}) : super(key: key);

  @override
  State<signForm> createState() => _signFormState();
}

class _signFormState extends State<signForm> {
  bool visible = true ;
  bool visible1 = true ;
  final _formKey = GlobalKey<FormState>();
  String _email = '' , _password = '' , _fname ='' , _lname ='' ,_birthday = '';
  AuthBase authBase = AuthBase();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top:10),
        child: Column(
          children: [
            Form(
                key: _formKey,
                child: Column(
                   children: [
                     TextFormField(
                       onChanged: (value) => _fname = value ,
                       validator: (value) => value!.length < 3 ? "enter a valid name" : null,
                       keyboardType: TextInputType.name,
                       decoration: InputDecoration(
                           labelText: 'First Name',
                       ),
                     ),
                     SizedBox(height: 20,),
                     TextFormField(
                       onChanged: (value) => _lname = value ,
                       validator: (value) => value!.length < 3 ? "enter a valid name" : null,
                       keyboardType: TextInputType.name,
                       decoration: InputDecoration(
                         labelText: 'Last Name',
                       ),
                     ),
                     SizedBox(height: 20,),
                     TextFormField(
                       onChanged: (value) => _email = value ,
                       validator: (value) => value!.length < 20 ? "enter a valid email" : null,
                       keyboardType: TextInputType.emailAddress,
                       decoration: InputDecoration(
                           labelText: 'Enter Your Email',
                           hintText: 'test@gmail.com'
                       ),
                     ),
                     SizedBox(height: 20,),
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
                     SizedBox(height: 20,),
                     TextFormField(
                       validator: (value) => (value != _password || value!.isEmpty) ? "is not the same password" : null,
                       keyboardType: TextInputType.visiblePassword,
                       obscureText: visible1,
                       decoration: InputDecoration(
                         labelText: 'Confirm Your Password',
                         suffixIcon:IconButton(onPressed:(){
                           visible1 = !visible1 ;
                           print(visible1);
                           setState(() {});
                         },
                             icon: visible1 == true ? Icon(Icons.visibility) : Icon(Icons.visibility_off)),

                       ),
                     ),
                     SizedBox(height: 20,),
                     TextFormField(
                       validator: (value) => value!.isEmpty ? "enter a valid birthday" : null,
                       onChanged: (value) => _birthday = value ,
                       keyboardType: TextInputType.datetime,
                       decoration: InputDecoration(
                           labelText: 'Enter Your Birthday',
                           hintText: 'dd/mm/yy'

                       ),
                     ),
                     SizedBox(height: 40,),
                     Button(
                       onPressed: () async {
                         if(_formKey.currentState!.validate()){
                           final String firrst_name = _fname;
                           final String last_name = _lname;
                           final String birthday = _birthday;
                           final String email = _email;
                           final String password = _password;
                           final docUser =
                           FirebaseFirestore.instance.collection("User").doc();
                           final user = UsersModel(
                             id: docUser.id,
                             fname: firrst_name,
                             lname: last_name,
                             birthday: birthday,
                             password: password,
                             email: email,

                           );
                           final json = user.toJson();
                           await docUser.set(json);
                           await authBase.register(_email, _password);



                           Navigator.of(context).pushNamed('login');
                         };

                       },
                       textColor: Colors.white,
                       bgColor: Colors.blue.shade700,
                       text: "Sign up ",
                     ),




              ],
            ))
          ],
        ),
      ),
    );
  }
}
