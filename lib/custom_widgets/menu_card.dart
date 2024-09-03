import 'package:flutter/material.dart';
Widget Menu_Card(BuildContext context,int index,List lst)
{
  return Container(
    height: 100,
    width: 100,
    margin: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("${lst[index]["item_pic"]}",height: 50,width: 50),
        Text("${lst[index]['item_name']}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
      ],
    ),
    decoration: BoxDecoration(
        color: Colors.pink.shade500,
        borderRadius: BorderRadius.circular(10)
    ),
  );
}