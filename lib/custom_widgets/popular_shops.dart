import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/home_controller.dart';
final HomeController homeController = Get.find(); // Reuse the existing instance

Widget PopularShops()
{
 return Obx(()=>Container(
   margin: EdgeInsets.all(10),
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Text("Popular Shops",style: TextStyle(fontSize: 25.5,fontWeight: FontWeight.w900),),
       homeController.popular_shop_list.isEmpty?Center(child: CircularProgressIndicator(color: Colors.pink,),):Container(
         width: 400,
         height: 170,
         child: ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount:homeController.popular_shop_list.length ,
           itemBuilder: (context, index) {
             return Container(
               height: 140,
               width: 140,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 image: DecorationImage(
                   fit: BoxFit.cover,
                   image: NetworkImage(
                     "${homeController.popular_shop_list[index]['shop_pic']}",
                   ),
                 ),
               ),
               child: Align(
                   alignment: Alignment(0, 1),
                   child: Chip(label:Text("${homeController.popular_shop_list[index]['deal']} deal"))
               ),
               margin: EdgeInsets.all(10),
             );

           },
         ),
       )
     ],
   ),
 ));
}