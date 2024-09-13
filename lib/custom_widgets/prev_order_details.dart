import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/home_controller.dart';
import 'package:untitled/screen/components/mydrawe.dart';
import 'package:untitled/screen/home.dart';
class PrevOrderDetails extends StatelessWidget{
  late int xx=0;
  PrevOrderDetails({required this.xx});
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.of(context).size.width;
    var mdh=MediaQuery.of(context).size.height;
    HomeController controller=Get.find();
    var lol=controller.prev_orders[xx]['prev_order_delivery_charge'].toString();
    var js=lol.split(" ");
    var xy=js[1];
    return Scaffold(
      appBar: AppBar(
        title: Text("Order no #$xx"),
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: Hero(tag: "pic${xx}", child: Container(
                    height: mdh*0.34,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("${controller.prev_orders[xx]['prev_order_pic']}"),
                            fit: BoxFit.cover
                        )
                    ),
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 10,
                      right: 10
                  ),
                  height: mdh*0.13,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${controller.prev_orders[xx]['prev_order_item']}",style: TextStyle(fontSize: mdw*0.075,fontWeight: FontWeight.bold),),
                      Text("${controller.prev_orders[xx]['prev_order_price']}",style: TextStyle(fontSize:  mdw*0.075,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                Container(
                  height: mdh*0.06,
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Charge:",style: TextStyle(fontSize: mdw*0.065,),),
                      Text("+ ${xy}Tk",style: TextStyle(fontSize: mdw*0.065,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  width: double.infinity,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                bottom: 10
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                      right: 10
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total price: ",style: TextStyle(fontSize: mdw*0.06),),
                        Text("${int.parse(controller.prev_orders[xx]['prev_order_price'])+int.parse(xy)}Tk",style: TextStyle(fontSize: mdw*0.06,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  SizedBox(height: mdh*0.01,),
                  ElevatedButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "Ordered again ${controller.prev_orders[xx]['prev_order_item']} Successfully",
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.green.shade400
                      );
                      controller.add_to_cart(
                          controller.prev_orders[xx]['prev_order_pic'],
                          controller.prev_orders[xx]['prev_order_item'],
                        "${int.parse(controller.prev_orders[xx]['prev_order_price'])+int.parse(xy)}"
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 96.0, vertical: 16.0), // Adjust the padding values as needed
                      child: Text("Order Again",style: TextStyle(fontSize: mdw*0.04,color: Colors.black),),
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}