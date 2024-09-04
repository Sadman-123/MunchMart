import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:untitled/custom_widgets/prev_order_card.dart';

final HomeController homeController = Get.find(); // Reuse the existing instance

Widget Order_Again() {
  return Obx(
        () => SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Order Again",
              style: TextStyle(fontSize: 25.5, fontWeight: FontWeight.w900),
            ),
            homeController.prev_orders.isEmpty
                ? Center(
              child: CircularProgressIndicator(
                color: Colors.pink,
              ),
            )
                : Container(
              width: 450,
              height: 250,
              child: CarouselSlider.builder(
                itemCount: homeController.prev_orders.length,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                  return PrevOrderCard(itemIndex);
                },
                options: CarouselOptions(
                  autoPlay: true,
                  height: 250,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
