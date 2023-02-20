import 'package:flutter/material.dart';
import 'package:learningflutter/ui/home_page.dart';
import 'package:learningflutter/ui/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

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

      initialRoute: "/login",
      routes: {
          "/":(context)=> LoginPage(),
        "/login":(context)=> LoginPage()
      },

    );
  }
}
