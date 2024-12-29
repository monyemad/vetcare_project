import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/screens.dart/forms_screens.dart/pet_complaint.dart';
import 'package:vetcare_project/widget/custom_pfpf.dart';

class PetsAnimalScreen extends StatefulWidget {
  const PetsAnimalScreen({super.key});

  @override
  State<PetsAnimalScreen> createState() => _PetsAnimalScreenState();
}

class _PetsAnimalScreenState extends State<PetsAnimalScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PetInformationForm()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomPFPF(
              image1: "assets/images/pets animal.png",
              image2: "assets/images/dogs.png",
              text: S.of(context).pet,
              onPressed1: () {},
              onPressed2: () {})),
    );
  }
}
