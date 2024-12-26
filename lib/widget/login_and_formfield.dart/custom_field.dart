import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomField extends StatelessWidget {
  final String text;

  const CustomField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isArabic() ? Alignment.centerRight : Alignment.centerLeft,
      padding: EdgeInsets.only(
          left: isArabic() ? 0 : 10, right: isArabic() ? 10 : 0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == "ar";
}
