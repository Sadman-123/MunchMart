import 'package:flutter/material.dart';
import '../custom_widgets/menu_card.dart';
import '../custom_widgets/promotional_banner.dart';
import '../custom_widgets/popular_shops.dart';
class Home extends StatelessWidget
{
  var lst=[
    {
      "item_pic":"assets/restaurant.png",
      "item_name":"Food Delivery"
    },
    {
      "item_pic":"assets/shopping-cart.png",
      "item_name":"Shop"
    },
    {
      "item_pic":"assets/delivery.png",
      "item_name":"Pick Up"
    },
    {
      "item_pic":"assets/home_delivery.png",
      "item_name":"Home Delivery"
    },
  ];
  var popular_shop_list=[
    {
      "shop_pic":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn4ZKvNJsQKNAd23vsjNaVxq-D_o77F8ru8Q&s",
      "deal":1.toString()
    },
    {
      "shop_pic":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrmHaipOrtaZaYddPByckO-4jT17Ueaz4Uvg&s",
      "deal":4.toString()
    },
    {
      "shop_pic":"https://www.satv.tv/wp-content/uploads/2024/01/shwapno-logo-1.jpg",
      "deal":3.toString()
    },
    {
      "shop_pic":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ7_B-OLpbA8poBh7GlvKlWYxCyu4KLHJEXA&s",
      "deal":2.toString()
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(23),
              ),
              margin: EdgeInsets.all(10),
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "What are you looking?",
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(15),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 220,
              child: Expanded(
                child: Container(
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.8
                    ),
                    itemBuilder: (context, index) {
                      return  Menu_Card(context, index, lst);
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 1,),
            PromotionalBanner(title: "Buy 1 Get 1 Free", content: "Best offer of Surf Excel Matic Liquid", pic: "https://www.hul.co.in/content-images/92ui5egz/production/6b1084c73784a3935b26963ce87000c0af1a9343-1920x1080.jpg?rect=1,0,1919,1080&w=375&h=211&fit=crop&auto=format", sponsored: true),
            SizedBox(height: 5,),
            PopularShops(popular_shop_list)
          ],
        ),
      ),
    );
  }
}