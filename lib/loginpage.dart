import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
      Padding(padding: EdgeInsets.all(10),

      child: Column(mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
          Center(
            child: Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30)),
              height: 200,
              width: 200,
          
            child: Image.asset("assets/667369_fly_place_soar_travel_icon.png")),
          )
        ],
      ),)
      
    );
  }
}