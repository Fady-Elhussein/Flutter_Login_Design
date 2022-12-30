import 'package:flutter/material.dart';

Widget defultButton( {
    double width =double.infinity,
     Color Background =Colors.blue,
    required  Function? function(),
    required String text,
})=>Container(
  width:width,
  height: 40.0,
  color: Background,
  child: MaterialButton(
    onPressed:function,
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);
Widget defulttextformfiled({
  required controller,
  required keyboardType,
  bool obscureText=false,
  required String text,
  required Icon prefixIcon,
  IconButton? suffixIcon,
  required  String? Function(String?) validator,


})=> TextFormField(
controller: controller,
keyboardType: keyboardType,
obscureText: obscureText,
validator:validator,
decoration: InputDecoration(
labelText: text,
contentPadding: EdgeInsets.all(25.0),
prefixIcon: prefixIcon,
suffixIcon: suffixIcon,
border: OutlineInputBorder(),
),
);
