import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/widget/buttons.dart/custom_button.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_text.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_textformfield.dart';
import 'package:vetcare_project/widget/radio_and_select.dart/custom_select.dart';

class PetInformationForm extends StatefulWidget {
  const PetInformationForm({super.key});

  @override
  State<PetInformationForm> createState() => _PetInformationFormState();
}

class _PetInformationFormState extends State<PetInformationForm> {
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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Pet Information",
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
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _locationController,
                decoration: const InputDecoration(
                  labelText: 'Location',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your location';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              CustomSelect(
                  onChanged: (val) {
                    setState(() {
                      _selectedAnimalType = val;
                    });
                  },
                  items: ["Cat", "Dog", "Bird"],
                  text: S.of(context).AnType,
                  value: _selectedAnimalType),
              const SizedBox(height: 20),
              TextFormField(
                controller: _animalAgeController,
                decoration: const InputDecoration(
                  labelText: 'Animal Age',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your animal age';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _animalWeightController,
                decoration: const InputDecoration(
                  labelText: 'Animal Weight',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
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
    );
  }
}
