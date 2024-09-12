import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/home_controller.dart';
import 'package:untitled/custom_widgets/menu_card.dart';
class Mychart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.of(context).size.width;
    var mdh=MediaQuery.of(context).size.height;
    HomeController controller=Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("My orders"),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.mycarts.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(index.toString()),
              child: Obx(()=>Chart_Tile(
                picurl: controller.mycarts[index]['cart_pic'],
                name: controller.mycarts[index]['cart_name'],
                price: controller.mycarts[index]['cart_price'],
              ),)
            );
          },
        );
      },)
    );
  }
}
class Chart_Tile extends StatelessWidget
{
  String name;
  String price;
  String picurl;
  Chart_Tile({required this.picurl,required this.name,required this.price});
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.of(context).size.width;
    var mdh=MediaQuery.of(context).size.height;
    return Container(
      height: mdh*0.14,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: mdw*0.455,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                bottomLeft: Radius.circular(24)
              ),
              image: DecorationImage(
                image: NetworkImage("$picurl"),
                fit: BoxFit.cover
              )
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 0.1),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  bottomRight: Radius.circular(24)
                )
              ),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$name",style: TextStyle(fontSize: mdw*0.060,fontWeight: FontWeight.bold),),
                    Text("1x${price}Tk",style: TextStyle(fontSize: mdw*0.047),)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}