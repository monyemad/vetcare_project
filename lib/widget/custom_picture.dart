import 'package:flutter/material.dart';

class CustomPicture extends StatelessWidget {
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;
  const CustomPicture(
      {super.key, required this.onPressed1, required this.onPressed2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              border:
                  Border.all(style: BorderStyle.solid, color: Colors.black26),
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
                onPressed: onPressed1,
                child: const Text(
                  "Import your image",
                  style: TextStyle(fontSize: 16),
                )),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              border:
                  Border.all(style: BorderStyle.solid, color: Colors.black26),
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
                onPressed: onPressed2,
                child: const Text(
                  "Postmortem lesiom",
                  style: TextStyle(fontSize: 16),
                )),
          ),
        ],
      ),
    );
  }
}
