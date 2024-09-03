import 'package:flutter/material.dart';
import 'package:untitled/controller/home_controller.dart';
import 'package:get/get.dart';
HomeController homex=Get.put(HomeController());
Widget Menu_Card(BuildContext context,int index)
{
  return Container(
    height: 100,
    width: 100,
    margin: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("${homex.menu[index]["item_pic"]}",height: 40,width: 40),
        Text("${homex.menu[index]['item_name']}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
      ],
    ),
    decoration: BoxDecoration(
        color: Colors.pink.shade500,
        borderRadius: BorderRadius.circular(10)
    ),
  );
}