import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/widget/custom_pfpf.dart';

class FishAnimalScreen extends StatefulWidget {
  const FishAnimalScreen({super.key});

  @override
  State<FishAnimalScreen> createState() => _FishAnimalScreenState();
}

class _FishAnimalScreenState extends State<FishAnimalScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(
  //     const Duration(seconds: 1),
  //     () => Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => const FarmInformationForm()),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomPFPF(
              image1: "assets/images/fish image.jpg",
              image2: "assets/images/fish.png",
              text: S.of(context).fish,
              onPressed1: () {},
              onPressed2: () {})),
    );
  }
}
