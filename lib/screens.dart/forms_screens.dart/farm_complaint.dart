import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/widget/buttons.dart/custom_button.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_text.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_textformfield.dart';
import 'package:vetcare_project/widget/radio_and_select.dart/custom_select.dart';

class FarmInformationForm extends StatefulWidget {
  const FarmInformationForm({super.key});

  @override
  State<FarmInformationForm> createState() => _FarmInformationFormState();
}

class _FarmInformationFormState extends State<FarmInformationForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneController = TextEditingController();
  final _locationController = TextEditingController();
  final _animalAgeController = TextEditingController();
  final _animalWeightController = TextEditingController();
  String? _selectedAnimalType;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Farm Information",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomText(text: S.of(context).name),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourName,
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  prefixIcon: Icons.person_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                CustomText(text: S.of(context).address),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAddress,
                  controller: _addressController,
                  keyboardType: TextInputType.streetAddress,
                  prefixIcon: Icons.house_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomText(text: S.of(context).phone),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourPhone,
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  prefixIcon: Icons.phone_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomText(text: S.of(context).location),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourLocation,
                  controller: _locationController,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.location_on_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your location';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomText(text: S.of(context).AnType),
                const SizedBox(
                  height: 8,
                ),
                CustomSelect(
                    onChanged: (val) {
                      setState(() {
                        _selectedAnimalType = val;
                      });
                    },
                    items: const ["Cow", "Buffalo", "Sheep", "Goat", "Other"],
                    text: S.of(context).selectAnimal,
                    value: _selectedAnimalType),
                const SizedBox(height: 20),
                CustomText(text: S.of(context).age),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAnAge,
                  controller: _animalAgeController,
                  keyboardType: TextInputType.number,
                  prefixIcon: Icons.perm_contact_calendar,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your animal age';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomText(text: S.of(context).weight),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAnWeight,
                  controller: _animalWeightController,
                  keyboardType: TextInputType.number,
                  prefixIcon: Icons.monitor_weight_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your animal weight';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomButton(text: S.of(context).submit, onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
