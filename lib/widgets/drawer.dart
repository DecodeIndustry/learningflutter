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
                const Text("Osama Kamal",style:
                  TextStyle(
                    color: Colors.white
                  ),),
                decoration: const BoxDecoration(
                    color: Colors.deepPurple
                ),
              accountEmail: const Text("osamakamal959@gmail.com",style: TextStyle(
                color: Colors.white,
              ),),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),

                ),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white
              ),),
            ),

            const ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),),
            ),

            const ListTile(
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
