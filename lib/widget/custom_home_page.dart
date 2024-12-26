import 'package:flutter/material.dart';

class CustomHome extends StatelessWidget {
  final VoidCallback onPressed;
  final String image;
  final String text;

  const CustomHome(
      {super.key,
      required this.onPressed,
      required this.image,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: onPressed,
          child: CircleAvatar(
            radius: 75,
            backgroundImage: AssetImage(image),
            backgroundColor: Colors.white,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
