import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vetcare_project/login_page.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({super.key});

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
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
                  borderRadius: BorderRadius.circular(150)
                ),
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage("assets/images/vetcare.png"),
              )
                ),
          ),
        ],
      ),
    );
  }
}
