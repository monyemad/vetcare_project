import 'package:flutter/material.dart';

class CustomLang extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final String text1;
  final VoidCallback function;
  final String text2;
  final IconData icon;

  const CustomLang({
    super.key,
    required this.onPressed,
    required this.function,
    required this.label,
    required this.icon,
    required this.text2,
    required this.text1,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Text(
                  label,
                  style: const TextStyle(fontSize: 25),
                ),
                actions: [
                  TextButton(onPressed: onPressed, child: Text(text1)),
                  TextButton(onPressed: function, child: Text(text2)),
                ],
              );
            });
      },
      icon: Icon(
        icon,
        size: 30,
        color: Colors.blue,
      ),
    );
  }
}
