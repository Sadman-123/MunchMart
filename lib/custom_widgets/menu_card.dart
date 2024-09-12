import 'package:flutter/material.dart';
import 'package:untitled/controller/home_controller.dart';
import 'package:get/get.dart';
final HomeController homeController = Get.find(); // Reuse the existing instance

Widget Menu_Card(BuildContext context,int index)
{
  return Obx(() {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("${homeController.menu[index]["item_pic"]}",height: 40,width: 40),
          Text("${homeController.menu[index]['item_name']}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  },);
}