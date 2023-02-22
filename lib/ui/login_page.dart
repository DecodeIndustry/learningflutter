
import 'package:flutter/material.dart';
import 'package:learningflutter/utils/routes.dart';


class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeBtn = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async{

    if(_formKey.currentState!.validate()){
      setState(() {
        changeBtn = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context,myRoutes.homeRoutes);

      setState(() {
        changeBtn = false;
      });
    }



  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(


        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/imgs/logo.png",fit: BoxFit.scaleDown,height: 400,),

              const SizedBox(height: 20.0),

              Text("Welcome $name",style: TextStyle(
                fontSize: 28,
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
                     validator: (String? value){
                       if(value!.isEmpty){

                         return "User Name can not be empty";
                       }
                       return  null;
                     },
                     onChanged: (value){
                       name = value;
                       setState(() {

                       });
                     },
                   ),

                   TextFormField(
                     obscureText: true,
                     decoration: const InputDecoration(
                       hintText: "Enter Password ",
                       labelText: "Password",

                     ),
                     validator: (String? value){
                       if(value!.isEmpty){

                         return "password can not be empty";
                       }
                       else if(value.length != 8){
                         return "Password must be 8 digit";
                       }
                       return  null;
                     },
                   ),

                   const SizedBox(height: 20.0,),

                   // ElevatedButton(onPressed: (){
                   //
                   //   Navigator.pushNamed(context, myRoutes.homeRoutes);
                   //
                   // },
                   // style: TextButton.styleFrom(minimumSize: const Size(180, 60)), child: const Text("Login"),)

                   Material(
                     color: Colors.deepOrange,
                       borderRadius: BorderRadius.circular(changeBtn? 50:8),
                     child: InkWell(
                       onTap: () => moveToHome(context),
                       child: AnimatedContainer(
                         duration: Duration(seconds: 1),
                         width: changeBtn? 50: 150,
                         height: 50,
                         alignment: Alignment.center,
                         child: changeBtn?Icon(Icons.done,color: Colors.white,): Text("Login",
                         style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),),
                       ),
                     ),
                   )

                 ],
               ),
             )

            ],

          ),
        ),
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

