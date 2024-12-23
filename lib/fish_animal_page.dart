import 'package:flutter/material.dart';
import 'package:vetcare_project/widget/custom_pfpf.dart';

class FishAnimalScreen extends StatelessWidget {
  const FishAnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomPFPF(
            image1: "assets/images/fish image.jpg",
            image2: "assets/images/fish.png",
            text: "Fish",
            onPressed1: () {},
            onPressed2: () {}),
      ),
    );
  }
}
