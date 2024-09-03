import 'package:flutter/material.dart';
import 'package:untitled/custom_widgets/prev_order_card.dart';
var prev_orders=[
  {
    "prev_order_item":"Biriyani",
    "prev_order_pic":"https://www.tbsnews.net/sites/default/files/styles/big_3/public/images/2021/03/19/biriyani.jpg",
    "prev_order_review":"4.4 (9000+)",
    "prev_order_loc":"Mirpur 10",
    "prev_order_delivery_charge":"Delivery 30 Tk"
  },
  {
    "prev_order_item":"Shingara",
    "prev_order_pic":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0QhsFVSXRxfmZsPLGOOjkYsbFz5TazwhYZA&s",
    "prev_order_review":"4.5 (9300+)",
    "prev_order_loc":"Mirpur 12",
    "prev_order_delivery_charge":"Delivery 54 Tk"
  },
  {
    "prev_order_item":"Khichuri",
    "prev_order_pic":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNLvRoMD-ztoTL3BQoHX2ZX72mL8wbXQ40-Q&s",
    "prev_order_review":"5.5 (1400+)",
    "prev_order_loc":"Shewrapara",
    "prev_order_delivery_charge":"Delivery 19 Tk"
  },
  {
    "prev_order_item":"Chui Jhal",
    "prev_order_pic":"https://i0.wp.com/petukcouple.com/wp-content/uploads/2021/11/Beef-Chui-Jhal-Recipe.jpeg?resize=700%2C393&ssl=1",
    "prev_order_review":"3.1 (200+)",
    "prev_order_loc":"Mirpur 1",
    "prev_order_delivery_charge":"Delivery 53 Tk"
  },
  {
    "prev_order_item":"Firni",
    "prev_order_pic":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvY9N2GE8-VFiouugPFFiWrD23NNw5cQJ46A&s",
    "prev_order_review":"4.9 (2100+)",
    "prev_order_loc":"Mirpur 13",
    "prev_order_delivery_charge":"Delivery 19 Tk"
  },
];
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
            itemCount:prev_orders.length,
            itemBuilder: (context, index) {
              return  PrevOrderCard(index,prev_orders);
            },
          ),
        )
      ],
    ),
  );
}