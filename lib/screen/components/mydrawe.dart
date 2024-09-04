import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget MyDrawer()
{
  return Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
              color: Colors.white
          ),
          accountEmail: Text("xyz@gmail.com",style: TextStyle(color: Colors.black),),
          accountName: Text("Sadman Sakib",style: TextStyle(color: Colors.black),),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
          ),
        ),
        ListTile(
          title: Text("Refund Account"),
          subtitle: Text("Balance and Payment Methods"),
          trailing: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent.shade100,
              ),
              child: Text("Tk 10",style: TextStyle(fontSize: 12,color: Colors. black,fontWeight: FontWeight.w900),)
          ),
        ),
        ListTile(
          leading: Icon(CupertinoIcons.money_dollar),
          title: Text("Try us for free now"),
        ),

        ListTile(
          leading: Icon(CupertinoIcons.gift),
          title: Text("Offers"),
        ),

        ListTile(title: Text("Voucher"),leading: Icon(CupertinoIcons.ticket_fill),),

        ListTile(title: Text("Favourites"),leading: Icon(CupertinoIcons.star),),

        ListTile(title: Text("Orders and Recordings"),leading: Icon(CupertinoIcons.time),),

        ListTile(title: Text("View Profile"),leading: Icon(CupertinoIcons.person),),

        ListTile(title: Text("Addresses"),leading: Icon(CupertinoIcons.map_pin),),

        ListTile(title: Text("Rewards"),leading: Icon(CupertinoIcons.gift_alt),),

        ListTile(title: Text("Invite Friends"),leading: Icon(CupertinoIcons.group),),

        ListTile(title: Text("Settings"),),

        ListTile(title: Text("Terms and Condition / Policy"),),

        ListTile(title: Text("Logout"),)
      ],
    ),
  );
}