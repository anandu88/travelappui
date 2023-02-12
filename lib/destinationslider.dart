import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travelbuddy/models/destnitaions.dart';
import 'package:travelbuddy/models/screens/destinationscreen.dart';

class Destinationslider extends StatelessWidget {
  const Destinationslider({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Top Destinations",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("view all",style: TextStyle(color: Colors.blue.shade600),)
                      ],
                    ),
                  ),
                  Container(height: 300,
                  color: Colors.red.shade50,
                  child: ListView.builder(itemCount: destinations.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Destination destination=destinations[index];
                    return GestureDetector(onTap: () => Navigator.push(context, MaterialPageRoute(builder: 
                    (context) => Destinationscreen(destination: destination),)),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 210,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Positioned(bottom: 15,
                              child: Container(
                                height: 120,
                                width: 200,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10
                                ),
                                color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${destination.activities.length}activities",
                                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.1),),
                                      Text(destination.description,style: TextStyle(color: Colors.grey),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [BoxShadow(color:Colors.black26,blurRadius: 6,
                              )],
                              ),
                              child: Stack(
                                children: [
                                  Hero(tag: destination.imageUrl,
                                    child: ClipRRect(borderRadius: BorderRadius.circular(20),
                                      child: Image(image:
                                       NetworkImage(destination.imageUrl),
                                       height: 180,
                                       width: 180,
                                       fit: BoxFit.cover,),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(destination.city,
                                        style: TextStyle(color: Colors.white,fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.2),),
                                        Text(destination.country,style: TextStyle(color: Colors.white),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                    
                      ),
                    );
                  },),)
                  
                ],
              );

    
  }
}