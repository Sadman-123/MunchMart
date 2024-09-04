import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/home_controller.dart';
final HomeController homeController = Get.find(); // Reuse the existing instance
Widget PrevOrderCard(int index) {
  return Obx((){
    return Container(
      height: 300,
      width: 240,
      margin: EdgeInsets.only(left: 2,top: 10,right: 2,bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 0.1, color: Colors.black),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Stack(
                children: [
                  Container(
                    width: 240,
                    height: 120,
                    child: Image.network(
                      "${homeController.prev_orders[index]['prev_order_pic']}",
                      height: 100,
                      width: 240,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      right: 12,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.pink,size: 34,))
                  )
                ]
            ),
          ),
          SizedBox(height: 2),
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "${homeController.prev_orders[index]['prev_order_item']}",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "${homeController.prev_orders[index]['prev_order_review']}",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Minimum 50 Tk",
                      style: TextStyle(color: Colors.black87),
                    ),
                    SizedBox(width: 12),
                    Text(
                      "${homeController.prev_orders[index]['prev_order_loc']}",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.delivery_dining, size: 22),
                    Text(
                      "${homeController.prev_orders[index]['prev_order_delivery_charge']}",
                      style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  });
}
