import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/ui/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/splash_background.png'),
          Image.asset('assets/images/splash_logo.png',width: 199, height: 208,),
          AnimatedSplashScreen(
            nextScreen: HomeScreen(),
            splash: const Text(''),
            backgroundColor: Colors.transparent,
          )
        ],
      ),
    );
  }
}
