import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/home_controller.dart';
import 'package:untitled/custom_widgets/prev_order_card.dart';
import 'package:untitled/screen/home.dart';
void main()
{
  Get.put(HomeController());
  runApp(Main());
}
class Main extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.black,
          color: Colors.white,
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
        ),
        dividerTheme: DividerThemeData(
          thickness: 0.4,
        )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(fontWeight: FontWeight.w800,fontSize: 31,color: Colors.white),
            centerTitle: false,
          ),
        chipTheme: ChipThemeData(
            backgroundColor: Colors.pink,
            shadowColor: Colors.pink,
            elevation: 2,
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
          dividerTheme: DividerThemeData(
              thickness: 0.4,
          )
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner:false,
      home: Home(),);
  }
}