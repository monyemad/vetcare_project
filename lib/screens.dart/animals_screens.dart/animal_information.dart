import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/widget/buttons.dart/custom_button.dart';
import 'package:vetcare_project/widget/date_and_time.dart/custom_date.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_text.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_textformfield.dart';
import 'package:vetcare_project/widget/radio_and_select.dart/custom_radio_row.dart';
import 'package:vetcare_project/widget/radio_and_select.dart/custom_select.dart';

class AnimalInformationScreen extends StatefulWidget {
  const AnimalInformationScreen({super.key});

  @override
  State<AnimalInformationScreen> createState() =>
      _AnimalInformationScreenState();
}

class _AnimalInformationScreenState extends State<AnimalInformationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneController = TextEditingController();
  final _animalNameController = TextEditingController();
  final _animalAgeController = TextEditingController();
  final _animalWeightController = TextEditingController();
  final _animalHeightController = TextEditingController();
  String? _selectedAnimalType;
  String? selectedAnimalSpecies;
  String? selectedAnimalService;
  String? animalGender;
  String? animalType;

  DateTime dateTime = DateTime.now();
  List<String> animalOptions = [];
  List<String> speciesOptions = [];

  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2024),
            lastDate: DateTime(2030))
        .then((value) {
      setState(() {
        dateTime = value!;
      });
    });
  }

  void _updateAnimalOptions(String selectedType) {
    setState(() {
      _selectedAnimalType = null; // Reset the selected animal type
      selectedAnimalSpecies = null; // Reset the selected species
      speciesOptions = []; // Reset species options

      if (selectedType == "Pet") {
        animalOptions = ["Dog", "Cat", "Parrot"];
      } else if (selectedType == "Farm") {
        animalOptions = ["Cow", "Sheep", "Horse"];
      } else {
        animalOptions = [];
      }
    });
  }

  void _updateSpeciesOptions(String selectedAnimal) {
    setState(() {
      selectedAnimalSpecies = null; // Reset the selected species

      if (selectedAnimal == "Dog") {
        speciesOptions = ["Labrador", "Poodle"];
      } else if (selectedAnimal == "Cat") {
        speciesOptions = ["Persian", "Siamese"];
      } else if (selectedAnimal == "Parrot") {
        speciesOptions = ["Macaw", "Cockatiel"];
      } else if (selectedAnimal == "Cow") {
        speciesOptions = ["Dairy", "Beef"];
      } else if (selectedAnimal == "Sheep") {
        speciesOptions = ["Merino", "Dorper"];
      } else if (selectedAnimal == "Horse") {
        speciesOptions = ["Arabian", "Thoroughbred"];
      } else {
        speciesOptions = [];
      }
    });
  }

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
                  "Animal Information",
                  // S.of(context).farmsInfo,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomText(text: S.of(context).owner),
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
                const SizedBox(height: 20),
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
                const CustomText(text: "Animal name:"
                    // S.of(context).location
                    ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: "Enter your animal name",
                  // S.of(context).yourLocation,
                  controller: _animalNameController,
                  keyboardType: TextInputType.name,
                  prefixIcon: Icons.pets_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your animal name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                const CustomText(text: "Date of Birth"),
                const SizedBox(height: 8),
                CustomDate(
                  text: '${dateTime.day},${dateTime.month},${dateTime.year}',
                  onPressed: _showDatePicker,
                ),
                const SizedBox(height: 20),
                CustomRadioRow(
                    text: "Animal Gender",
                    title: "Female",
                    value: "Female",
                    groupValue: animalGender,
                    title1: "Male",
                    value1: "Male",
                    onChange: (val) {
                      setState(() {
                        animalGender = val;
                      });
                    }),
                const SizedBox(height: 20),
                CustomRadioRow(
                    text: S.of(context).AnType,
                    title: "Pet",
                    value: "Pet",
                    groupValue: animalType,
                    title1: "Farm",
                    value1: "Farm",
                    onChange: (val) {
                      setState(() {
                        animalType = val;
                        _updateAnimalOptions(val);
                      });
                    }),
                const SizedBox(
                  height: 15,
                ),
                CustomSelect(
                    onChanged: (val) {
                      setState(() {
                        _selectedAnimalType = val;
                        _updateSpeciesOptions(val!);
                      });
                    },
                    items: animalOptions,
                    text: S.of(context).selectAnimal,
                    value: _selectedAnimalType),
                const SizedBox(height: 10),
                const CustomText(text: "Species:"),
                const SizedBox(
                  height: 8,
                ),
                CustomSelect(
                    onChanged: (val) {
                      setState(() {
                        selectedAnimalSpecies = val;
                      });
                    },
                    items: speciesOptions,
                    text: "Select your animal species",
                    value: selectedAnimalSpecies),
                const SizedBox(
                  height: 15,
                ),
                if (animalType == "Farm") ...[
                  const CustomText(text: "Location"),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    hintText: "Enter your farm location",
                    controller: _addressController,
                    keyboardType: TextInputType.streetAddress,
                    prefixIcon: Icons.location_on_rounded,
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your farm location';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                ],
                const CustomText(text: "Service:"),
                const SizedBox(
                  height: 8,
                ),
                CustomSelect(
                    onChanged: (val) {
                      setState(() {
                        selectedAnimalService = val;
                      });
                    },
                    items: const [
                      "boarding for animal",
                      "vaccination",
                      "surgery",
                      "detection"
                    ],
                    text: "Select your animal service",
                    value: selectedAnimalService),
                const SizedBox(
                  height: 20,
                ),
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
                const CustomText(text: "Animal height"),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: "Enter your animal height",
                  controller: _animalHeightController,
                  keyboardType: TextInputType.number,
                  prefixIcon: Icons.height_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your animal height';
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
