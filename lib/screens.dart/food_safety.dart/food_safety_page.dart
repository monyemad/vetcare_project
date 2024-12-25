import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';

class FoodSafetyScreen extends StatelessWidget {
  const FoodSafetyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          // alignment: Alignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).food,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[200]),
                  child: const Image(
                    image: AssetImage("assets/images/food.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  S.of(context).data,
                  style: const TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[200]),
                  child: const Image(
                    image: AssetImage("assets/images/FAQ.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  S.of(context).faq,
                  style: const TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[200]),
                  child: const Image(
                    image: AssetImage("assets/images/checklist.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  S.of(context).daily,
                  style: const TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
