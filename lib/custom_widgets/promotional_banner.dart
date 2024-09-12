import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/home_controller.dart';
class PromotionalBanner extends StatelessWidget{
  final bool sponsored;
  final String title;
  final String name;
  final String price;
  final String content;
  final String pic;
  const PromotionalBanner(
      {super.key,
        required this.title,
        required this.content,
        required this.pic,
        required this.sponsored,
        required this.name, required this.price
      });
  @override
  Widget build(BuildContext context) {
    HomeController controller=Get.find();
    final themee=Theme.of(context);
    bool give_clr()
    {
      if(themee.brightness==Brightness.dark)
        {
          return true;
        }
      else
        {
          return false;
        }
    }
    return Container(
      height: 200,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black,width: 0.1),
        borderRadius: BorderRadius.circular(10),
        color: give_clr()?Colors.white:Colors.white
      ),
      child: Row(
        children: [
          Container(
            width: 180,
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(sponsored?"Sponsored":"Not Sponsored",style: TextStyle(fontWeight: FontWeight.bold,color: give_clr()?Colors.black:Colors.black),),
                SizedBox(height: 30),
                Text(
                  "$title",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900,color: give_clr()?Colors.black:Colors.black),
                ),
                Wrap(
                  children: [Text("$content",style: TextStyle(color: give_clr()?Colors.black54:Colors.black54),)],
                ),
                SizedBox(height: 8,),
                ElevatedButton(onPressed: (){
                  final stk=SnackBar(content: Text("1 Excel Ordered Successfully"));
                  ScaffoldMessenger.of(context).showSnackBar(stk);
                  controller.add_to_cart(pic, name, price);
                }, child: Text("Order Now"))
              ],
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                height: 200,  // Set a fixed height to match the left container
                child: Image.network(
                  "$pic",
                  fit: BoxFit.cover,  // Ensures the image covers the container
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}