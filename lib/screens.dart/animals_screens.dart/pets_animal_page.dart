import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/widget/custom_pfpf.dart';

class PetsAnimalScreen extends StatelessWidget {
  const PetsAnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomPFPF(
              image1: "assets/images/pets animal.png",
              image2: "assets/images/dogs.png",
              text: S.of(context).pets,
              onPressed1: () {},
              onPressed2: () {})),
    );
  }
}
