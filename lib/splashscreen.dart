import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelbuddy/Homepage.dart';
import 'package:travelbuddy/loginpage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Homepage(),));
     
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: Container(
          decoration: BoxDecoration(
            
          ),
          height:MediaQuery.of(context).size.height*48,
          width: MediaQuery.of(context).size.width*48,
          child: Image.asset("assets/preview.jpg"),
        ),
      ),
      
    );
  }
}