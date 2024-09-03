import 'package:flutter/material.dart';
import 'package:untitled/controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:untitled/custom_widgets/prev_order_card.dart';
HomeController home=Get.put(HomeController());
Widget Order_Again()
{
  return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Order Again",style: TextStyle(fontSize: 25.5,fontWeight: FontWeight.w900),),
        Container(
          width: 450,
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:home.prev_orders.length,
            itemBuilder: (context, index) {
              return  PrevOrderCard(index);
            },
          ),
        )
      ],
    ),
  );
}