import 'package:flutter/material.dart';
import 'package:newsapp/provider/app_provider.dart';
import 'package:newsapp/ui/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
    create: (_)=>AppProvider(),
      child:  MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SplashScreen(),
    );
  }
}

