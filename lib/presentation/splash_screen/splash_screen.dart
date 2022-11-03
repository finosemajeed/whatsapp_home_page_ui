import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/core/colors_config.dart';
import 'package:whatsapp_ui_clone/core/screen_size.dart';
import 'package:whatsapp_ui_clone/presentation/bottom_navigation_screen/bottom_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: ((context) => BottomNavigationBarScreen())));
    });
  }

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(children: [
        Center(
          child: SizedBox(
            height: 100,
            width: 100,
            child: Image.asset('assets/images/whatsapplogo.png'),
          ),
        ),
        Positioned(
          bottom: SizeConfig.screenHeight! / 11,
          right: SizeConfig.screenWidth! / 2.2,
          child: const Text(
            'from',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
        Positioned(
          bottom: SizeConfig.screenHeight! / 20,
          right: SizeConfig.screenWidth! / 2.8,
          child: const Text(
            'FACEBOOK',
            style: TextStyle(
                color: lightGreen,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
        ),
      ]),
    );
  }
}
