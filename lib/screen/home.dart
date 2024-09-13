import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/controller/home_controller.dart';
import 'package:untitled/custom_widgets/footer_ad.dart';
import 'package:badges/badges.dart' as badges;
import 'package:untitled/custom_widgets/mychart.dart';
import 'package:untitled/custom_widgets/prev_orders.dart';
import 'package:untitled/screen/components/mydrawe.dart';
import '../custom_widgets/menu_card.dart';
import '../custom_widgets/promotional_banner.dart';
import '../custom_widgets/popular_shops.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Home extends StatelessWidget {
  final HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.of(context).size.width;
    var mdh=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          Obx(()=>Padding(
              padding: const EdgeInsets.all(9.0),
              child: badges.Badge(
                showBadge: homeController.mycarts.isEmpty?false:true,
                badgeStyle: badges.BadgeStyle(badgeColor: Colors.blueAccent),
                badgeContent: Text("${homeController.mycarts.length}"),
                child: IconButton(
                  onPressed: () {
                    Get.to(Mychart());
                  },
                  icon: Icon(CupertinoIcons.cart, color: Colors.blueAccent, size: 29),
                ),
              )
          ),),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
            ),
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: Obx((){
        return homeController.menu.isEmpty?Center(child: LoadingAnimationWidget.beat(color: Colors.blueAccent, size: 60),):SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(23),
                ),
                margin: EdgeInsets.all(10),
                width: 330,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "What are you looking for?",
                    prefixIcon: Icon(CupertinoIcons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              SizedBox(height: 10),
              homeController.menu.isEmpty?Center(child: CircularProgressIndicator(color: Colors.pink,),):Container(
                // Adjust the height here as needed
                constraints: BoxConstraints(
                  minHeight: 220,
                  maxHeight: 300, // Adjust to your needs or make it flexible
                ),
                child: GridView.builder(
                  shrinkWrap: true, // Important to prevent GridView from expanding infinitely
                  physics: NeverScrollableScrollPhysics(), // Disable scrolling inside GridView
                  itemCount: homeController.menu.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.8,
                  ),
                  itemBuilder: (context, index) {
                    return Menu_Card(context, index);
                  },
                ),
              ),
              SizedBox(height: 1),
              PromotionalBanner(
                name: "Surf excel",
                price:"110",
                title: "Buy 1 Get 1 Free",
                content: "Best offer of Surf Excel Matic Liquid",
                pic: "https://www.hul.co.in/content-images/92ui5egz/production/6b1084c73784a3935b26963ce87000c0af1a9343-1920x1080.jpg?rect=1,0,1919,1080&w=375&h=211&fit=crop&auto=format",
                sponsored: true,
              ),
              SizedBox(height: 5),
              Order_Again(),
              SizedBox(height: 5,),
              PopularShops(),
              SizedBox(height: 5,),
              Footer_Ad()
            ],
          ),
        );
      })
    );
  }
}
