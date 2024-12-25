import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/widget/custom_pfpf.dart';

class FarmAnimalScreen extends StatelessWidget {
  const FarmAnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomPFPF(
              image1: "assets/images/farm.jpg",
              image2: "assets/images/farm animal.png",
              text: S.of(context).farms,
              onPressed1: () {},
              onPressed2: () {})),
    );
  }
}
