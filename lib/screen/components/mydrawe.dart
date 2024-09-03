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
        Divider(),
        ListTile(
          leading: Icon(Icons.paid_outlined),
          title: Text("Try us for free now"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.local_offer),
          title: Text("Offers"),
        ),
        Divider(),
        ListTile(title: Text("Voucher"),leading: Icon(Icons.card_giftcard),),
        Divider(),
        ListTile(title: Text("Favourites"),leading: Icon(Icons.favorite_border),),
        Divider(),
        ListTile(title: Text("Orders and Recordings"),leading: Icon(Icons.history),),
        Divider(),
        ListTile(title: Text("View Profile"),leading: Icon(Icons.person),),
        Divider(),
        ListTile(title: Text("Addresses"),leading: Icon(Icons.pin_drop),),
        Divider(),
        ListTile(title: Text("Rewards"),leading: Icon(Icons.celebration),),
        Divider(),
        ListTile(title: Text("Invite Friends"),leading: Icon(Icons.group),),
        Divider(),
        ListTile(title: Text("Settings"),),
        Divider(),
        ListTile(title: Text("Terms and Condition / Policy"),),
        Divider(),
        ListTile(title: Text("Logout"),)
      ],
    ),
  );
}