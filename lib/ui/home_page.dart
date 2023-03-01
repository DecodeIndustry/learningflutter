import 'package:flutter/material.dart';
import 'package:learningflutter/models/catalog.dart';
import 'package:learningflutter/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final dummyList = List.generate(50, (index) => CatalogModel.products[0]);
    
    return Scaffold(
      appBar: AppBar(

        title: Text("Catalog App",style: TextStyle(
          color: Colors.black
        ),),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          // itemCount: CatalogModel.products.length,
          itemCount: dummyList.length,
          itemBuilder: (context,index){

            // return ProductWidget(item: CatalogModel.products[index],);
            return ProductWidget(item: dummyList[index],);

          },
        ),
      ),

      drawer: MyDrawer(),


    );
  }
}
