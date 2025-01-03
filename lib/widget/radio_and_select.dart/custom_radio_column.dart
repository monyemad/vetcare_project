import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomRadioColumn extends StatelessWidget {
  final String text;
  final String title4;
  final String value4;
  final String? groupValue;
  final Function(dynamic) onChange;
  final String title1;
  final String value1;
  final String title2;
  final String value2;
  final String title3;
  final String value3;

  const CustomRadioColumn({
    super.key,
    required this.text,
    required this.title4,
    required this.value4,
    required this.groupValue,
    required this.title1,
    required this.value1,
    required this.onChange,
    required this.title2,
    required this.value2,
    required this.title3,
    required this.value3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: isArabic() ? Alignment.topRight : Alignment.topLeft,
          padding: EdgeInsets.only(
              left: isArabic() ? 0 : 20, right: isArabic() ? 20 : 0),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          style: BorderStyle.solid, color: Colors.black12),
                      color: Colors.grey[300]),
                  child: RadioListTile(
                    contentPadding: const EdgeInsets.all(0.0),
                    title: Text(title1),
                    value: value1,
                    groupValue: groupValue,
                    onChanged: onChange,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          style: BorderStyle.solid, color: Colors.black12),
                      color: Colors.grey[300]),
                  child: RadioListTile(
                    contentPadding: const EdgeInsets.all(0.0),
                    title: Text(title2),
                    value: value2,
                    groupValue: groupValue,
                    onChanged: onChange,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          style: BorderStyle.solid, color: Colors.black12),
                      color: Colors.grey[300]),
                  child: RadioListTile(
                    contentPadding: const EdgeInsets.all(0.0),
                    title: Text(title3),
                    value: value3,
                    groupValue: groupValue,
                    onChanged: onChange,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          style: BorderStyle.solid, color: Colors.black12),
                      color: Colors.grey[300]),
                  child: RadioListTile(
                    contentPadding: const EdgeInsets.all(0.0),
                    title: Text(title4),
                    value: value4,
                    groupValue: groupValue,
                    onChanged: onChange,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == "ar";
}
