import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/home_controller.dart';
import 'package:untitled/custom_widgets/prev_order_card.dart';
import 'package:untitled/custom_widgets/prev_order_details.dart';
import 'package:untitled/screen/home.dart';
void main()
{
  Get.put(HomeController());
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => Main(),
    ),
  );
}
class Main extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.of(context).size.width;
    var mdh=MediaQuery.of(context).size.height;
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.black,
          color: Colors.white,
          titleTextStyle: TextStyle(fontWeight: FontWeight.w800,fontSize: mdw*0.064,color: Colors.black),
          centerTitle: false,
        ),
        chipTheme: ChipThemeData(
          backgroundColor: Colors.blueAccent,
          labelStyle: TextStyle(
            color: Colors.black
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            foregroundColor: MaterialStateProperty.all(Colors.black)
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