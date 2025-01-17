import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/screens.dart/animals_screens.dart/form_screens.dart/animal_information.dart';
import 'package:vetcare_project/screens.dart/animals_screens.dart/form_screens.dart/poultry_information.dart';
import 'package:vetcare_project/screens.dart/layout.dart/home_page.dart';
import 'package:vetcare_project/widget/custom_animal_page.dart';

class AnimalScreen extends StatelessWidget {
  const AnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            const Image(
              image: AssetImage("assets/images/login.png"),
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(right: 200),
                //   child:
                //   CustomAnimal(
                //       onPressed: () {
                //         // Navigator.push(context,
                //         //     MaterialPageRoute(builder: (context) {
                //         //   return const PetsAnimalScreen();
                //         // }));
                //       },
                //       image: "assets/images/pets animals.gif",
                //       text: S.of(context).pet),
                // ),
                Padding(
                  padding: const EdgeInsets.only(right: 300.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const HomeScreen();
                        }));
                      },
                      icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: CustomAnimal(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const AnimalInformationScreen();
                        }));
                      },
                      image: "assets/images/animals.gif",
                      text: S.of(context).animalForm),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: CustomAnimal(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const PoultryInformationScreen();
                        }));
                      },
                      image: "assets/images/poultry.gif",
                      text: S.of(context).poultry),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: CustomAnimal(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return const FishAnimalScreen();
                        // }));
                      },
                      image: "assets/images/fish.gif",
                      text: S.of(context).fish),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
