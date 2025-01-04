import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/widget/buttons.dart/custom_elevated_button.dart';
import 'package:vetcare_project/widget/custom_picture.dart';
import 'package:vetcare_project/widget/date_and_time.dart/custom_date.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_field.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_textformfield.dart';
import 'package:vetcare_project/widget/radio_and_select.dart/custom_radio.dart';
import 'package:vetcare_project/widget/radio_and_select.dart/custom_radio_row.dart';
import 'package:vetcare_project/widget/radio_and_select.dart/custom_select.dart';

class PoultryInformationScreen extends StatefulWidget {
  const PoultryInformationScreen({super.key});

  @override
  State<PoultryInformationScreen> createState() =>
      _PoultryInformationScreenState();
}

class _PoultryInformationScreenState extends State<PoultryInformationScreen> {
  final _formKey = GlobalKey<FormState>();

  final name = TextEditingController();
  final medication = TextEditingController();
  final vaccination = TextEditingController();
  final phone = TextEditingController();
  final capacity = TextEditingController();
  final clincal = TextEditingController();
  final morbidity = TextEditingController();
  final temp = TextEditingController();
  final lightening = TextEditingController();
  final airFlow = TextEditingController();
  final ration = TextEditingController();
  final water = TextEditingController();
  final feed = TextEditingController();
  final mortality = TextEditingController();

  String? farmType;
  String? animalType;
  String? preveousMedication;
  String? preveousVaccination;
  String? farmSystem;
  String? selectedFarmSystem;

  DateTime dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2014),
            lastDate: DateTime(2030))
        .then((value) {
      setState(() {
        dateTime = value!;
      });
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
              children: [
                Text(
                  S.of(context).poultryInfo,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomField(text: S.of(context).owner),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourName,
                  controller: name,
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
                CustomField(text: S.of(context).phone),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourPhone,
                  controller: phone,
                  keyboardType: TextInputType.phone,
                  prefixIcon: Icons.phone_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomRadioRow(
                    text: "Type of Farm:",
                    title: "Open system",
                    value: "Open system",
                    groupValue: farmType,
                    title1: "Closed system",
                    value1: "Closed system",
                    onChange: (val) {
                      setState(() {
                        farmType = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                const CustomField(text: "Farm Rearing System:"),
                const SizedBox(
                  height: 8,
                ),
                CustomSelect(
                    onChanged: (val) {
                      setState(() {
                        farmSystem = val;
                      });
                    },
                    items: const ["Broiler", "Tayer", "Breeder"],
                    text: "select your farm rearing system",
                    value: farmSystem),
                const SizedBox(
                  height: 20,
                ),
                if (farmSystem == "Tayer" || farmSystem == "Breeder") ...[
                  CustomRadio(
                      title: "Cages",
                      value: "Cages",
                      groupValue: selectedFarmSystem,
                      title1: "Deep litter system",
                      value1: "Deep litter system",
                      onChange: (val) {
                        setState(() {
                          selectedFarmSystem = val;
                        });
                      }),
                  const SizedBox(height: 15),
                ],
                const CustomField(text: "Farm Capacity:"),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: "Enter your farm capacity",
                  controller: capacity,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.reduce_capacity_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter farm capacity';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                const CustomField(text: "Clincal signs:"),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: "Enter your animal symptoms",
                  controller: clincal,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.signal_cellular_alt_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your animal symptoms';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                const CustomField(text: "Mortality rate:"),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: "Enter your animal mortality rate",
                  controller: mortality,
                  keyboardType: TextInputType.number,
                  prefixIcon: Icons.bar_chart_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your animal mortality rate';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                const CustomField(text: "Mobidity rate:"),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: "Enter your animal mobidity rate",
                  controller: morbidity,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.bar_chart_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your animal morbidity rate';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                const CustomField(text: "feed consumption:"),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: "Enter your animal feed consumption",
                  controller: feed,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.fastfood_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your animal feed consumption';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                const CustomField(text: "Water consumption:"),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: "Enter your animal water consumption",
                  controller: water,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.water_drop_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your animal water consumption';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomRadioRow(
                    text: "Previous medication",
                    title: "Yes",
                    value: "Yes",
                    groupValue: preveousMedication,
                    title1: "No",
                    value1: "No",
                    onChange: (val) {
                      setState(() {
                        preveousMedication = val;
                      });
                    }),
                if (preveousMedication == "Yes") ...[
                  const SizedBox(height: 15),
                  CustomTextFormField(
                    hintText: "Enter your animal previous medication",
                    controller: medication,
                    keyboardType: TextInputType.text,
                    prefixIcon: Icons.medication_rounded,
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Animal previous medication must not be empty';
                      }
                      return null;
                    },
                  ),
                ],
                const SizedBox(height: 20),
                CustomRadioRow(
                    text: "Previous vaccination",
                    title: "Yes",
                    value: "Yes",
                    groupValue: preveousVaccination,
                    title1: "No",
                    value1: "No",
                    onChange: (val) {
                      setState(() {
                        preveousVaccination = val;
                      });
                    }),
                if (preveousVaccination == "Yes") ...[
                  const SizedBox(height: 15),
                  CustomDate(
                    text: '${dateTime.day},${dateTime.month},${dateTime.year}',
                    onPressed: _showDatePicker,
                  ),
                ],
                const SizedBox(height: 20),
                const CustomField(text: "Type of ration:"),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: "Enter your animal ration",
                  controller: ration,
                  keyboardType: TextInputType.text,
                  // prefixIcon: Icons.ramp_right_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your animal ration';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomField(text: S.of(context).AnType),
                const SizedBox(
                  height: 8,
                ),
                CustomSelect(
                    onChanged: (val) {
                      setState(() {
                        animalType = val;
                      });
                    },
                    items: const [
                      "Chicken",
                      "Pigeon",
                      "Duck",
                      "Goose",
                      "Turkey"
                    ],
                    text: S.of(context).selectAnimal,
                    value: animalType),
                const SizedBox(height: 20),
                const CustomField(text: "Picture:"),
                const SizedBox(
                  height: 8,
                ),
                CustomPicture(onPressed1: () {}, onPressed2: () {}),
                const SizedBox(height: 20),
                const CustomField(text: "Temperature/Humidity:"),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: "Enter farm temperature",
                  controller: temp,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.thermostat_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter farm temperature';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                const CustomField(text: "Lightening System:"),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: "Enter farm lightening system",
                  controller: lightening,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.light_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter farm lightening system';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                const CustomField(text: "Air flow:"),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: "Enter farm air flow",
                  controller: airFlow,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.wind_power_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter farm air flow';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomElevatedButton(
                    onPressed: () {}, text: S.of(context).submit),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
