import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/screens.dart/forms_screens.dart/poultry_complaint.dart';
import 'package:vetcare_project/widget/custom_pfpf.dart';

class PoultryAnimalScreen extends StatefulWidget {
  const PoultryAnimalScreen({super.key});

  @override
  State<PoultryAnimalScreen> createState() => _PoultryAnimalScreenState();
}

class _PoultryAnimalScreenState extends State<PoultryAnimalScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PoultryInformationForm()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomPFPF(
            image1: "assets/images/poultry image.jpeg",
            image2: "assets/images/poultry.png",
            text: S.of(context).poultry,
            onPressed1: () {},
            onPressed2: () {}),
      ),
    );
  }
}
