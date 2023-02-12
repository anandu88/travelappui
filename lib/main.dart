import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelbuddy/loginpage.dart';
import 'package:travelbuddy/splashscreen.dart';

void main(){
  runApp(
     MaterialApp(
    home:Splashscreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),

    

    
    )
  );
}