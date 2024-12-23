import 'package:flutter/material.dart';

class CustomRowButton extends StatelessWidget {
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;
  final String text1;
  final String text2;
  const CustomRowButton(
      {super.key,
      required this.onPressed1,
      required this.onPressed2,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: onPressed1,
          style: ElevatedButton.styleFrom(
            elevation: 12,
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(text1,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        const SizedBox(
          width: 100,
        ),
        ElevatedButton(
          onPressed: onPressed2,
          style: ElevatedButton.styleFrom(
            elevation: 12,
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(text2,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
