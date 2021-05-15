import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text(
                    "Prannay Jain",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: Text(
                    "prannayjain11@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  )),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "EMail Me",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
