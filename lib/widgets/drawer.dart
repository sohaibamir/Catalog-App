import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://avatars.githubusercontent.com/u/90424695?s=400&u=d860b2794ecbccad391a4d3f599761ad06aa8e86&v=4";
    return Drawer(
      child: Container(
        color: Colors.black38,
        child: ListView(
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                //decoration: BoxDecoration(color: Colors.black54),
                accountName: Text("Sohaib Amir"),
                accountEmail: Text("sohaib.binamir15@gmail.com"),
                // currentAccountPicture: Image.network(imageUrl)
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.amberAccent),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.amberAccent),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
                  color: Colors.amberAccent),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.amberAccent),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.amberAccent),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.amberAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
