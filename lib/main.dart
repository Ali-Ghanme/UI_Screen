import 'package:flutter/material.dart';
import 'package:ui_test/UI/ScreenOne.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(411, 683),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return const GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: ScreenOne(),
          );
        });
  }
}
