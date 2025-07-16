import 'package:bmi_calculator/config/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    //init getX by GetMaterialApp
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xff06070B)),
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(titleSmall: TextStyle(color: Colors.white)),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.init,
      getPages: AppPages.routes,
    );
  }
}
