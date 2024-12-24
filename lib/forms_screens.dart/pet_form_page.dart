import 'package:flutter/material.dart';
import 'package:vetcare_project/widget/buttons.dart/custom_row_button.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_text.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_textformfield.dart';
import 'package:vetcare_project/widget/radio_and_select.dart/custom_select.dart';

class PetFormScreen extends StatefulWidget {
  const PetFormScreen({super.key});

  @override
  State<PetFormScreen> createState() => _PetFormScreenState();
}

class _PetFormScreenState extends State<PetFormScreen> {
  String? animalType;

  TextEditingController name = TextEditingController();

  TextEditingController address = TextEditingController();

  TextEditingController phoneNumber = TextEditingController();

  TextEditingController location = TextEditingController();

  TextEditingController age = TextEditingController();

  TextEditingController weight = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 6,
              ),
              const Text(
                "Pet Information",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomText(text: "Owner:"),
              const SizedBox(
                height: 6,
              ),
              CustomTextFormField(
                hintText: "Enter your name",
                controller: name,
                keyboardType: TextInputType.name,
                prefixIcon: Icons.person_rounded,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomText(text: "Address:"),
              const SizedBox(
                height: 6,
              ),
              CustomTextFormField(
                hintText: "Enter your address",
                controller: address,
                keyboardType: TextInputType.streetAddress,
                prefixIcon: Icons.house_rounded,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomText(text: "Phone:"),
              const SizedBox(
                height: 6,
              ),
              CustomTextFormField(
                hintText: "Enter your phone number",
                controller: phoneNumber,
                keyboardType: TextInputType.phone,
                prefixIcon: Icons.phone_rounded,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomText(text: "Location:"),
              const SizedBox(
                height: 6,
              ),
              CustomTextFormField(
                hintText: "Enter your location",
                controller: location,
                keyboardType: TextInputType.text,
                prefixIcon: Icons.location_on_rounded,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomText(text: "Animal Type:"),
              const SizedBox(
                height: 6,
              ),
              CustomSelect(
                  onChanged: (val) {
                    setState(() {
                      animalType = val;
                    });
                  },
                  items: const ["Cat", "Dog", "Bird"],
                  text: "Select your animal type",
                  value: animalType),
              const CustomText(text: "Animal Age:"),
              const SizedBox(
                height: 6,
              ),
              CustomTextFormField(
                hintText: "Enter your animal age",
                controller: age,
                keyboardType: TextInputType.number,
                prefixIcon: Icons.numbers_rounded,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomText(text: "Animal Weight:"),
              const SizedBox(
                height: 6,
              ),
              CustomTextFormField(
                hintText: "Enter your animal weight",
                controller: weight,
                keyboardType: TextInputType.number,
                prefixIcon: Icons.monitor_weight_rounded,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: CustomRowButton(
                    onPressed1: () {},
                    onPressed2: () {},
                    text1: "Reset",
                    text2: "Sumbit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
