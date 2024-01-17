import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeu2/resources/routes/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => GetMaterialApp(
        title: 'Free U',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // fontFamily: 'Exo2',
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: AppRoutes.appRoutes(),
      ),
      designSize: Size(390, 844),
    );
  }
}
