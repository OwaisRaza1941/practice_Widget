import 'package:flutter/material.dart';
import 'package:paractice/home/switch_paractice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwitchParactice(),
    );
  }
}


 //Go Router Paractice

    // MaterialApp.router(
    //   routerConfig: appRouter,
    //   debugShowCheckedModeBanner: false,
    // );