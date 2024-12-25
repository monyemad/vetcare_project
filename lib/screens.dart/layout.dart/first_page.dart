import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vetcare_project/screens.dart/layout.dart/login_page.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/log.png"),
              fit: BoxFit.cover,
            )),
          ),
          Center(
            child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(150)),
                child: const Center(
                  child: CircleAvatar(
                    radius: 300,
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage("assets/images/vetcare.png"),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
