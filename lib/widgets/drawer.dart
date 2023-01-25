//savbcdefghikjklmnopqrstuvwxyz
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final _myProfileImage =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxoVgE3Aq9trt8OBwGqyietNA0GJ1IPdPXAA&usqp=CAU";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                margin: EdgeInsets.zero,
                accountName: Text("AKR2803"),
                accountEmail: Text("akr28032001@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(_myProfileImage),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}