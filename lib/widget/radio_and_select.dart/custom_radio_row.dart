import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomRadioRow extends StatelessWidget {
  final String text;
  final String title;
  final String value;
  final String? groupValue;
  final Function(dynamic) onChange;
  final String title1;
  final String value1;

  const CustomRadioRow({
    super.key,
    required this.text,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.title1,
    required this.value1,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                padding: EdgeInsets.only(
                    left: isArabic() ? 0 : 25, right: isArabic() ? 25 : 0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          style: BorderStyle.solid, color: Colors.black12),
                      color: Colors.grey[300]),
                  child: RadioListTile(
                    contentPadding: const EdgeInsets.all(0.0),
                    title: Text(title),
                    value: value,
                    groupValue: groupValue,
                    onChanged: onChange,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: isArabic() ? 25 : 0, right: isArabic() ? 0 : 25),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
      ],
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == "ar";
}
