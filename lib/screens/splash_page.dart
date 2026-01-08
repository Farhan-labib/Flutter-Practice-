import 'dart:async';
import 'package:flutter/material.dart';
import '../main.dart';
import '../wrapper.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyWidget()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
              'assets/logo/logo.png',
              height: 100,
              fit: BoxFit.contain,
            ),
      )
    );
  }
}