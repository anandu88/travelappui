import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travelbuddy/models/activities.dart';
import 'package:travelbuddy/models/destnitaions.dart';

class Destinationscreen extends StatefulWidget {
  final Destination destination;
  const Destinationscreen({super.key, required this.destination});

  @override
  State<Destinationscreen> createState() => _DestinationscreenState();
}

class _DestinationscreenState extends State<Destinationscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(blurRadius: 6,color: Colors.black26,offset: Offset(0.0,2.0 )
                      ),
    
                    ],
                    
                  ),
                  child: Hero(tag: widget.destination.imageUrl,
                    child: ClipRRect(borderRadius: BorderRadius.circular(30),
                      child: Image(image: NetworkImage(widget.destination.imageUrl),
                      fit: BoxFit.cover,)),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed:() => Navigator.pop(context),  
                    icon: Icon(Icons.arrow_back_outlined,size: 30,color: Colors.white,)),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 30,color: Colors.white,)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.sort,size: 30,color: Colors.white,))
                      ],
                    )
                  ],
                ),
                 Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(widget.destination.city,
                                        style: TextStyle(color: Colors.white,fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.2),),
                                        Text(widget.destination.country,style: TextStyle(color: Colors.white),)
                                      ],
                                    ),
                                  ),
                                  Positioned(bottom: 20,right: 20,
                                    child: Icon(Icons.location_on_outlined,
                                    size: 30,))
              ],
            ),
            Expanded(
              child: ListView.builder(itemBuilder:(context, index) {
                Activity activity=widget.destination.activities[index];
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
                        height: 170,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding:EdgeInsets.fromLTRB(100, 20, 20, 20),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(width: 120,
                                    child: Text(activity.name,overflow: TextOverflow.ellipsis,maxLines: 2,
                                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                  ),
                                  Text("\$${activity.price}",
                                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)
                                ],
                              ),
                              Text(activity.type)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 20,
                      bottom: 15,
                    child: ClipRRect(borderRadius: BorderRadius.circular(20),child:
                     Image(image: NetworkImage(activity.imageUrl),
                     fit: BoxFit.cover,
                     width: 110,)
                     ))
                  ],
                );
              }, 
              itemCount: widget.destination.activities.length,),
            )
          ],
        ),
      ),
    );
  }
}