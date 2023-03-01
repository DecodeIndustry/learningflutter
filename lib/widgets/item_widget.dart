import 'package:flutter/material.dart';
import 'package:learningflutter/models/catalog.dart';



class ProductWidget extends StatelessWidget {

   final Item item;

  const ProductWidget({Key? key,required this.item}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(


      child: ListTile(

        onTap: (){

          print("${item.name} Pressed");

        },

        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price.toString()}",
        textScaleFactor: 1.5,
        style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),),
      ),
    );
  }
}

