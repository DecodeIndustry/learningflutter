import 'package:flutter/material.dart';
import 'package:learningflutter/ui/home_page.dart';
import 'package:learningflutter/ui/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learningflutter/utils/routes.dart';

void main(){

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      debugShowCheckedModeBanner: false,// this remove debug mark from app

      initialRoute: "/login",
      routes: {
          "/":(context)=> LoginPage(),
        myRoutes.homeRoutes:(context)=> HomePage(),
        myRoutes.loginRoute:(context)=> LoginPage()
      },

    );
  }
}
