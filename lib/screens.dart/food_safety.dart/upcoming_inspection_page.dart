import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_textformfield.dart';

class UpcomingInspectionScreen extends StatefulWidget {
  const UpcomingInspectionScreen({super.key});

  @override
  State<UpcomingInspectionScreen> createState() =>
      _UpcomingInspectionScreenState();
}

class _UpcomingInspectionScreenState extends State<UpcomingInspectionScreen> {
  final search = TextEditingController();
  final date = TextEditingController();
  final filter = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              S.of(context).upcome,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTextFormField(
                hintText: S.of(context).search,
                controller: search,
                keyboardType: TextInputType.text,
                prefixIcon: Icons.search_rounded,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTextFormField(
                hintText: S.of(context).date,
                controller: date,
                keyboardType: TextInputType.datetime,
                prefixIcon: Icons.calendar_month_rounded,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTextFormField(
                hintText: S.of(context).filter,
                controller: filter,
                keyboardType: TextInputType.text,
                prefixIcon: Icons.filter_alt_rounded,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        )),
      ),
    );
  }
}
