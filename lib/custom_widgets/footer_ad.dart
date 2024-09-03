import 'package:flutter/material.dart';
Widget Footer_Ad()
{
  return Container(
    width: 400,
    padding: EdgeInsets.all(5),
    height: 170,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 0.1, color: Colors.black),
    ),
    margin: EdgeInsets.all(10),
    child: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Try Rewards",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900,color: Colors.black),
            ),
            SizedBox(height: 3,),
            Text("Earn Points and win Prizes",style: TextStyle(color: Colors.black54),)
          ],
        ),
        Positioned(
          child: Image.asset("assets/gifts.png",width: 120,height: 120,),
          right: 10,
          top: 23,
        )
      ],
    ),
  );
}