import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final imageUrl = "assets/images/undraw_male_avatar1.png";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: Center(
                  child: UserAccountsDrawerHeader(
                      margin: EdgeInsets.zero,
                      accountName: Text("George Toppo"),
                      accountEmail: Text("gtoppo99@gmail.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage(imageUrl),
                      )),
                )),
            ListTile(
              onTap: (){},
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text('Home', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              title: Text('Profile', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              title: Text('Email', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
