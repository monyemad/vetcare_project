import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/screens.dart/food_safety.dart/new_inspection_page.dart';
import 'package:vetcare_project/screens.dart/food_safety.dart/upcoming_inspection_page.dart';
import 'package:vetcare_project/widget/buttons.dart/custom_elevated_button.dart';

class FoodInspectionScreen extends StatelessWidget {
  const FoodInspectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                S.of(context).dashboard,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 60,
                width: 250,
                child: CustomElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const UpcomingInspectionScreen();
                      }));
                    },
                    text: S.of(context).upcome),
              ),
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                height: 60,
                width: 250,
                child: CustomElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const NewInspectionScreen();
                      }));
                    },
                    text: S.of(context).newInspections),
              ),
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                  height: 60,
                  width: 250,
                  child: CustomElevatedButton(
                      onPressed: () {}, text: S.of(context).past)),
            ],
          ),
        ),
      ),
    );
  }
}
