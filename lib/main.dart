import 'package:flutter/material.dart';
import 'package:paractice/home/radiobutton_paractice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RadiobuttonPractice(),
    );
  }
}


 //Go Router Paractice

    // MaterialApp.router(
    //   routerConfig: appRouter,
    //   debugShowCheckedModeBanner: false,
    // );