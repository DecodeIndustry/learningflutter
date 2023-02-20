import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/imgs/logo.png",fit: BoxFit.cover,),

          const SizedBox(height: 20.0),

          const Text("Welcome",style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 20.0,),

         Padding(
           // padding: const EdgeInsets.all(16.0)
           padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 24.0),
           child: Column(
             children: [
               TextFormField(
                 decoration: const InputDecoration(
                   hintText: "Enter User Name",
                   labelText: "User Name",

                 ),
               ),

               TextFormField(
                 obscureText: true,
                 decoration: const InputDecoration(
                   hintText: "Enter Password ",
                   labelText: "Password",

                 ),
               ),

               const SizedBox(height: 20.0,),

               ElevatedButton(onPressed: (){

                 print("Hii Osama");
               },
               style: TextButton.styleFrom(), child: const Text("Login"),)

             ],
           ),
         )

        ],

      ),

    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to favorite'),
        action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

}

