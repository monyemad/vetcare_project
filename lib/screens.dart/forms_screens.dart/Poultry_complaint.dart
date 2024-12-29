import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/widget/buttons.dart/custom_elevated_button.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_field.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_textformfield.dart';
import 'package:vetcare_project/widget/radio_and_select.dart/custom_select.dart';

class PoultryInformationForm extends StatefulWidget {
  const PoultryInformationForm({super.key});

  @override
  State<PoultryInformationForm> createState() => _PoultryInformationFormState();
}

class _PoultryInformationFormState extends State<PoultryInformationForm> {
  final _formKey = GlobalKey<FormState>();

  final name = TextEditingController();
  final address = TextEditingController();
  final location = TextEditingController();
  final phone = TextEditingController();
  final weight = TextEditingController();
  final age = TextEditingController();

  String? complaintType;
  String? animalType;
  String? healthStatus;

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
                CustomField(text: S.of(context).name),
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
                const SizedBox(height: 16),
                CustomField(text: S.of(context).address),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAddress,
                  controller: address,
                  keyboardType: TextInputType.streetAddress,
                  prefixIcon: Icons.house_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
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
                const SizedBox(height: 16),
                CustomField(text: S.of(context).location),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourLocation,
                  controller: location,
                  keyboardType: TextInputType.text,
                  prefixIcon: Icons.location_on_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your location';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
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
                    items: const ["CHICKEN", "TURKEY", "DUCK"],
                    text: S.of(context).selectAnimal,
                    value: animalType),
                const SizedBox(height: 16),
                CustomField(text: S.of(context).age),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAnAge,
                  controller: age,
                  keyboardType: TextInputType.number,
                  prefixIcon: Icons.perm_contact_calendar_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your animal age';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                CustomField(text: S.of(context).weight),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAnWeight,
                  controller: weight,
                  keyboardType: TextInputType.number,
                  prefixIcon: Icons.monitor_weight_rounded,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your animal weight';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                CustomField(text: S.of(context).complainType),
                const SizedBox(
                  height: 8,
                ),
                CustomSelect(
                    onChanged: (val) {
                      setState(() {
                        complaintType = val;
                      });
                    },
                    items: const ["health-issue", "injury", "other"],
                    text: S.of(context).selectComplain,
                    value: complaintType),
                const SizedBox(height: 16),
                CustomField(text: S.of(context).healthStatus),
                const SizedBox(
                  height: 8,
                ),
                CustomSelect(
                    onChanged: (val) {
                      setState(() {
                        healthStatus = val;
                      });
                    },
                    items: const ["healthy", "injured", "sick"],
                    text: S.of(context).selectHealth,
                    value: healthStatus),
                const SizedBox(height: 16),
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
