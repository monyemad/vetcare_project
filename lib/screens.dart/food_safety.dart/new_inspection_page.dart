import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/widget/buttons.dart/custom_button.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_text.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_textformfield.dart';
import 'package:vetcare_project/widget/radio_and_select.dart/custom_radio_column.dart';
import 'package:vetcare_project/widget/radio_and_select.dart/custom_select.dart';

class NewInspectionScreen extends StatefulWidget {
  const NewInspectionScreen({super.key});

  @override
  State<NewInspectionScreen> createState() => _NewInspectionScreenState();
}

class _NewInspectionScreenState extends State<NewInspectionScreen> {
  String? type;

  String? criteria;

  TextEditingController name = TextEditingController();

  TextEditingController address = TextEditingController();

  TextEditingController note = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // const SizedBox(
                //   height: 6,
                // ),
                Text(
                  S.of(context).newInspections,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    S.of(context).basic,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomText(text: S.of(context).name),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).your,
                  controller: name,
                  keyboardType: TextInputType.name,
                  prefixIcon: Icons.person_rounded,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomText(text: S.of(context).address),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hintText: S.of(context).yourAddress,
                  controller: address,
                  keyboardType: TextInputType.streetAddress,
                  prefixIcon: Icons.house_rounded,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomText(text: S.of(context).type),
                const SizedBox(
                  height: 8,
                ),
                CustomSelect(
                    onChanged: (val) {
                      setState(() {
                        type = val;
                      });
                    },
                    items: const [],
                    text: S.of(context).select,
                    value: type),
                const SizedBox(
                  height: 20,
                ),
                CustomRadioColumn(
                  text: S.of(context).criteria,
                  title1: S.of(context).healthandSafety,
                  value1: S.of(context).healthandSafety,
                  groupValue: criteria,
                  title2: S.of(context).operationalStandards,
                  value2: S.of(context).operationalStandards,
                  onChange: (value) {
                    setState(() {
                      criteria = value;
                    });
                  },
                  title3: S.of(context).documentation,
                  value3: S.of(context).documentation,
                  title4: S.of(context).riskAssessment,
                  value4: S.of(context).riskAssessment,
                ),
                const SizedBox(height: 20),
                CustomText(text: S.of(context).notes),
                const SizedBox(
                  height: 8,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  child: CustomTextFormField(
                    hintText: S.of(context).noteText,
                    controller: note,
                    keyboardType: TextInputType.text,
                    prefixIcon: Icons.pending_actions_rounded,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(text: S.of(context).submit, onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
