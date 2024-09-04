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
          leading: Icon(Icons.paid_outlined),
          title: Text("Try us for free now"),
        ),

        ListTile(
          leading: Icon(Icons.local_offer),
          title: Text("Offers"),
        ),

        ListTile(title: Text("Voucher"),leading: Icon(Icons.card_giftcard),),

        ListTile(title: Text("Favourites"),leading: Icon(Icons.favorite_border),),

        ListTile(title: Text("Orders and Recordings"),leading: Icon(Icons.history),),

        ListTile(title: Text("View Profile"),leading: Icon(Icons.person),),

        ListTile(title: Text("Addresses"),leading: Icon(Icons.pin_drop),),

        ListTile(title: Text("Rewards"),leading: Icon(Icons.celebration),),

        ListTile(title: Text("Invite Friends"),leading: Icon(Icons.group),),

        ListTile(title: Text("Settings"),),

        ListTile(title: Text("Terms and Condition / Policy"),),

        ListTile(title: Text("Logout"),)
      ],
    ),
  );
}