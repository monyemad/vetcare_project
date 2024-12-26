import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/screens.dart/forms_screens.dart/farm_complaint.dart';
import 'package:vetcare_project/widget/custom_pfpf.dart';

class FarmAnimalScreen extends StatefulWidget {
  const FarmAnimalScreen({super.key});

  @override
  State<FarmAnimalScreen> createState() => _FarmAnimalScreenState();
}

class _FarmAnimalScreenState extends State<FarmAnimalScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const FarmInformationForm()),
      ),
    );
  }

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
