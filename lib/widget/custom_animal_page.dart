import 'package:flutter/material.dart';

class CustomAnimal extends StatelessWidget {
  final VoidCallback onPressed;
  final String image;
  final String text;

  const CustomAnimal(
      {super.key,
      required this.onPressed,
      required this.image,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          child: CircleAvatar(
            radius: 62,
            backgroundImage: AssetImage(image),
            backgroundColor: Colors.grey[200],
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
