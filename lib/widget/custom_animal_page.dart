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
          child: Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[200]),
            child: Image(image: AssetImage(image)),
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
