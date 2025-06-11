import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paractice/home/gesturedetectorall_paractice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GesturedetectorallParactice(),
    );
  }
}


 //Go Router Paractice

    // MaterialApp.router(
    //   routerConfig: appRouter,
    //   debugShowCheckedModeBanner: false,
    // );