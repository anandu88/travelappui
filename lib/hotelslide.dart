import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travelbuddy/models/hotellist.dart';

import 'models/destnitaions.dart';

class Hotelslider extends StatelessWidget {
  const Hotelslider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Exclusive Hotels",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("view all",style: TextStyle(color: Colors.blue.shade600),)
                      ],
                    ),
                  ),
                  Container(height: 300,
                  color: Colors.red.shade50,
                  child: ListView.builder(itemCount: hotels.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Hotel hotel=hotels[index];
                    return Container(
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
                                    Text(hotel.name,
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.1),
                                    ),
                                    SizedBox(height: 2,),

                                    Text(hotel.address,style: TextStyle(color: Colors.grey),),
                                    SizedBox(height: 2,),
                                    Text("\$${hotel.price}/night",style: TextStyle(color: Colors.blue),)
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
                            child: ClipRRect(borderRadius: BorderRadius.circular(20),
                              child: Image(image:
                               NetworkImage(hotel.imageUrl),
                               height: 180,
                               width: 180,
                               fit: BoxFit.cover,),
                            ),
                          )
                        ],
                      ),

                    );
                  },),)
                  
                ],
              );

    
  }
}
  