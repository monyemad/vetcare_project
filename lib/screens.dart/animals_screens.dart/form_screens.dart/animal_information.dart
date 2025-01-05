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
      _selectedAnimalType = null;
      selectedAnimalSpecies = null;
      speciesOptions = [];

      if (selectedType == S.of(context).pet) {
        animalOptions = [
          S.of(context).dog,
          S.of(context).cat,
          S.of(context).bunny,
          S.of(context).parrot
        ];
      } else if (selectedType == S.of(context).farm) {
        animalOptions = [
          S.of(context).cow,
          S.of(context).sheep,
          S.of(context).horse
        ];
      } else {
        animalOptions = [];
      }
    });
  }

  void _updateSpeciesOptions(String selectedAnimal) {
    setState(() {
      selectedAnimalSpecies = null;

      if (selectedAnimal == S.of(context).dog) {
        speciesOptions = [
          S.of(context).labrador,
          S.of(context).poodle,
          S.of(context).germanShepherd,
          S.of(context).husky,
          S.of(context).golden,
          S.of(context).bulldog,
          S.of(context).boxer,
          S.of(context).beagle,
          S.of(context).dachshund,
        ];
      } else if (selectedAnimal == S.of(context).cat) {
        speciesOptions = [
          S.of(context).persian,
          S.of(context).siamese,
          S.of(context).maineCoon,
          S.of(context).bengal,
          S.of(context).scottishFold,
          S.of(context).ragdoll,
          S.of(context).sphynx,
          S.of(context).britishShorthair,
        ];
      } else if (selectedAnimal == S.of(context).parrot) {
        speciesOptions = [
          S.of(context).macaw,
          S.of(context).cockatiel,
          S.of(context).africanGrey,
          S.of(context).budgie,
          S.of(context).canary,
          S.of(context).amazonParrot,
          S.of(context).lovebird,
          S.of(context).eclectus,
          S.of(context).quakerParrot,
        ];
      } else if (selectedAnimal == S.of(context).cow) {
        speciesOptions = [
          S.of(context).holsteinFriesian,
          S.of(context).jersey,
          S.of(context).guernsey,
          S.of(context).ayrshire,
          S.of(context).brownSwiss,
          S.of(context).hereford,
          S.of(context).charolais,
          S.of(context).angus,
        ];
      } else if (selectedAnimal == S.of(context).sheep) {
        speciesOptions = [
          S.of(context).merino,
          S.of(context).dorper,
          S.of(context).suffolk,
          S.of(context).dorset,
          S.of(context).hampshire,
          S.of(context).texel,
          S.of(context).rambouillet
        ];
      } else if (selectedAnimal == S.of(context).horse) {
        speciesOptions = [
          S.of(context).arabian,
          S.of(context).throughbred,
          S.of(context).quarter,
          S.of(context).appaloosa,
          S.of(context).friesian,
          S.of(context).clydesdale,
          S.of(context).mustang,
          S.of(context).andalusian,
        ];
      } else if (selectedAnimal == S.of(context).bunny) {
        speciesOptions = [
          S.of(context).netherlandDwarf,
          S.of(context).flemishGiant,
          S.of(context).lionhead,
          S.of(context).hollandLop,
          S.of(context).miniRex,
          S.of(context).angora,
          S.of(context).americanFuzzyLop,
        ];
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
                Text(
                  S.of(context).animalInfo,
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
                      return S.of(context).pleaseName;
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
                      return S.of(context).pleaseAddress;
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
                      return S.of(context).pleasePhone;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomText(text: S.of(context).animalName),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAnName,
                  controller: _animalNameController,
                  keyboardType: TextInputType.name,
                  prefixIcon: Icons.pets_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).pleaseAnName;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomText(text: S.of(context).dateOfBirth),
                const SizedBox(height: 8),
                CustomDate(
                  text: '${dateTime.day},${dateTime.month},${dateTime.year}',
                  onPressed: _showDatePicker,
                ),
                const SizedBox(height: 20),
                CustomRadioRow(
                    text: S.of(context).animalGender,
                    title: S.of(context).female,
                    value: S.of(context).female,
                    groupValue: animalGender,
                    title1: S.of(context).male,
                    value1: S.of(context).male,
                    onChange: (val) {
                      setState(() {
                        animalGender = val;
                      });
                    }),
                const SizedBox(height: 20),
                CustomRadioRow(
                    text: S.of(context).AnType,
                    title: S.of(context).pet,
                    value: S.of(context).pet,
                    groupValue: animalType,
                    title1: S.of(context).farm,
                    value1: S.of(context).farm,
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
                CustomText(text: S.of(context).species),
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
                    text: S.of(context).selectSpecies,
                    value: selectedAnimalSpecies),
                const SizedBox(
                  height: 15,
                ),
                if (animalType == S.of(context).farm) ...[
                  CustomText(text: S.of(context).location),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    hintText: S.of(context).yourFarmLocation,
                    controller: _addressController,
                    keyboardType: TextInputType.streetAddress,
                    prefixIcon: Icons.location_on_rounded,
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return S.of(context).pleaseFarmLocation;
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                ],
                CustomText(text: S.of(context).service),
                const SizedBox(
                  height: 8,
                ),
                CustomSelect(
                    onChanged: (val) {
                      setState(() {
                        selectedAnimalService = val;
                      });
                    },
                    items: [
                      S.of(context).boarding,
                      S.of(context).animalVaccination,
                      S.of(context).surgery,
                      S.of(context).detection,
                    ],
                    text: S.of(context).selectService,
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
                      return S.of(context).pleaseAnAge;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomText(text: S.of(context).height),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAnHeight,
                  controller: _animalHeightController,
                  keyboardType: TextInputType.number,
                  prefixIcon: Icons.height_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).pleaseAnHeight;
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
                      return S.of(context).pleaseAnWeight;
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
