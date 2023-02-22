import 'package:flutter/material.dart';
import 'package:learningflutter/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ), body: Center(
      child: Container(
        child: Text("Hello Osama Kamal"),
      ),
    ),

      drawer: MyDrawer(),


    );
  }
}
