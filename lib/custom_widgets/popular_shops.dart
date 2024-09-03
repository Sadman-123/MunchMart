import 'package:flutter/material.dart';
Widget PopularShops(List popular_shop_list)
{
 return Container(
   margin: EdgeInsets.all(10),
   decoration: BoxDecoration(
   ),
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Text("Popular Shops",style: TextStyle(fontSize: 25.5,fontWeight: FontWeight.w900),),
       Container(
         width: 400,
         height: 200,
         child: ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount:popular_shop_list.length ,
           itemBuilder: (context, index) {
             return  Container(
               height: 140,
               width: 140,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 image: DecorationImage(
                   fit: BoxFit.cover,
                   image: NetworkImage(
                     "${popular_shop_list[index]['shop_pic']}",
                   ),
                 ),
               ),
               child: Align(
                   alignment: Alignment(0, 1),
                   child: Chip(label: Text("${popular_shop_list[index]['deal']} deal"))
               ),
               margin: EdgeInsets.all(10),
             );
           },
         ),
       )
     ],
   ),
 );
}