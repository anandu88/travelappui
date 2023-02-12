import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelbuddy/models/destnitaions.dart';

import 'destinationslider.dart';
import 'hotelslide.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [SliverAppBar(
            leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu_open_rounded,color: Colors.black,)),
            backgroundColor: Colors.white,
            floating: true,
            pinned: true,
            title: Row(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("GO",style: TextStyle(color: Colors.blue.shade200),),
                const Text("fast",style: TextStyle(color: Colors.black),)
              ],
            ),
            actions: [const CircleAvatar(
              backgroundImage:
               NetworkImage("https://p4.wallpaperbetter.com/wallpaper/424/216/1017/power-chainsaw-man-chainsaw-man-manga-hd-wallpaper-preview.jpg"),

            )],
            bottom: AppBar(
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  
                ),
                width: double.infinity,
                height: 40,
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search)
                  ),
                ),
              ),
            ),
          ),
            SliverList(delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.only(right: 120,left: 20),
                child: Text("what would you like to find",style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.w100),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(child:
                       FaIcon(FontAwesomeIcons.plane)),
                    ),
                     Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(child:
                       FaIcon(FontAwesomeIcons.bed)),
                    ),
                     Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(child:
                       FaIcon(FontAwesomeIcons.personWalking)),
                    ),
                     Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(child:
                       FaIcon(FontAwesomeIcons.personBiking)),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
              ),
              const SizedBox(height: 10,),
              Destinationslider(),
              SizedBox(height: 10,),
              Hotelslider()

            ],
            )
            )
          ],
        ),
      ),
    );
  }
}