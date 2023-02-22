import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://images.freeimages.com/images/large-previews/46e/red-beetle-1416148.jpg";
    return  Drawer(

      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,

              child: UserAccountsDrawerHeader(accountName:
                Text("Osama Kamal",style:
                  TextStyle(
                    color: Colors.white
                  ),),
                decoration: BoxDecoration(
                    color: Colors.deepPurple
                ),
              accountEmail: Text("osamakamal959@gmail.com",style: TextStyle(
                color: Colors.white,
              ),),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),

                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white
              ),),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text("Email",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),),
            ),
          ],
        ),
      ),

    );
  }
}
