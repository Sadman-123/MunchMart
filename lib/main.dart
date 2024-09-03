import 'package:flutter/material.dart';
import 'package:untitled/screen/home.dart';
void main()
{
  runApp(Main());
}
class Main extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.black,
          titleTextStyle: TextStyle(fontWeight: FontWeight.w800,fontSize: 31,color: Colors.black),
          centerTitle: false,
        ),
        chipTheme: ChipThemeData(
          backgroundColor: Colors.pink,
          labelStyle: TextStyle(
            color: Colors.white
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.pink),
            foregroundColor: MaterialStateProperty.all(Colors.white)
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: Colors.black,
        )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
          appBarTheme: AppBarTheme(
            foregroundColor: Colors.black,
            titleTextStyle: TextStyle(fontWeight: FontWeight.w800,fontSize: 31,color: Colors.white),
            centerTitle: false,
          )
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner:false,
      home: Home(),);
  }
}
