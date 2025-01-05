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
                      return S.of(context).pleaseOwner;
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
                      return S.of(context).pleasePhone;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomRadioRow(
                    text: S.of(context).typeFarm,
                    title: S.of(context).open,
                    value: S.of(context).open,
                    groupValue: farmType,
                    title1: S.of(context).closed,
                    value1: S.of(context).closed,
                    onChange: (val) {
                      setState(() {
                        farmType = val;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
                CustomField(text: S.of(context).farmRSystem),
                const SizedBox(
                  height: 8,
                ),
                CustomSelect(
                    onChanged: (val) {
                      setState(() {
                        farmSystem = val;
                      });
                    },
                    items: [
                      S.of(context).broiler,
                      S.of(context).tayer,
                      S.of(context).breeder
                    ],
                    text: S.of(context).selectFRS,
                    value: farmSystem),
                const SizedBox(
                  height: 20,
                ),
                if (farmSystem == S.of(context).tayer ||
                    farmSystem == S.of(context).breeder) ...[
                  CustomRadio(
                      title: S.of(context).cages,
                      value: S.of(context).cages,
                      groupValue: selectedFarmSystem,
                      title1: S.of(context).deepLS,
                      value1: S.of(context).deepLS,
                      onChange: (val) {
                        setState(() {
                          selectedFarmSystem = val;
                        });
                      }),
                  const SizedBox(height: 15),
                ],
                CustomField(text: S.of(context).capacity),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourCapacity,
                  controller: capacity,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.reduce_capacity_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).pleaseFarmCapacity;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomField(text: S.of(context).clinical),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAnClinical,
                  controller: clincal,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.signal_cellular_alt_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).pleaseAnSymptoms;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomField(text: S.of(context).mortality),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAnMortality,
                  controller: mortality,
                  keyboardType: TextInputType.number,
                  prefixIcon: Icons.bar_chart_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).pleaseMorality;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomField(text: S.of(context).mobidity),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAnMobidity,
                  controller: morbidity,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.bar_chart_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).pleaseMobidity;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomField(text: S.of(context).feed),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAnFeed,
                  controller: feed,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.fastfood_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).pleaseFeed;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomField(text: S.of(context).water),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAnWater,
                  controller: water,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.water_drop_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).pleaseWater;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomRadioRow(
                    text: S.of(context).medication,
                    title: S.of(context).yes,
                    value: S.of(context).yes,
                    groupValue: preveousMedication,
                    title1: S.of(context).no,
                    value1: S.of(context).no,
                    onChange: (val) {
                      setState(() {
                        preveousMedication = val;
                      });
                    }),
                if (preveousMedication == S.of(context).yes) ...[
                  const SizedBox(height: 15),
                  CustomTextFormField(
                    hintText: S.of(context).yourMediction,
                    controller: medication,
                    keyboardType: TextInputType.text,
                    prefixIcon: Icons.medication_rounded,
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return S.of(context).pleaseMedication;
                      }
                      return null;
                    },
                  ),
                ],
                const SizedBox(height: 20),
                CustomRadioRow(
                    text: S.of(context).vaccination,
                    title: S.of(context).yes,
                    value: S.of(context).yes,
                    groupValue: preveousVaccination,
                    title1: S.of(context).no,
                    value1: S.of(context).no,
                    onChange: (val) {
                      setState(() {
                        preveousVaccination = val;
                      });
                    }),
                if (preveousVaccination == S.of(context).yes) ...[
                  const SizedBox(height: 15),
                  CustomDate(
                    text: '${dateTime.day},${dateTime.month},${dateTime.year}',
                    onPressed: _showDatePicker,
                  ),
                ],
                const SizedBox(height: 20),
                CustomField(text: S.of(context).ration),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAnRation,
                  controller: ration,
                  keyboardType: TextInputType.text,
                  // prefixIcon: Icons.ramp_right_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).pleaseAnRation;
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
                    items: [
                      S.of(context).chicken,
                      S.of(context).pigeon,
                      S.of(context).duck,
                      S.of(context).geese,
                      S.of(context).turkey
                    ],
                    text: S.of(context).selectAnimal,
                    value: animalType),
                const SizedBox(height: 20),
                CustomField(text: S.of(context).picture),
                const SizedBox(
                  height: 8,
                ),
                CustomPicture(onPressed1: () {}, onPressed2: () {}),
                const SizedBox(height: 20),
                CustomField(text: S.of(context).temp),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourTemp,
                  controller: temp,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.thermostat_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).pleaseTemp;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomField(text: S.of(context).light),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourLight,
                  controller: lightening,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.light_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).pleaseLight;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomField(text: S.of(context).airFlow),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAir,
                  controller: airFlow,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.wind_power_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).pleaseAir;
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
