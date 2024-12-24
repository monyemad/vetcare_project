import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/widget/custom_pfpf.dart';

class PoultryAnimalScreen extends StatelessWidget {
  const PoultryAnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomPFPF(
            image1: "assets/images/poultry image.jpeg",
            image2: "assets/images/poultry.png",
            text: S.of(context).poultries,
            onPressed1: () {},
            onPressed2: () {}),
      ),
    );
  }
}
