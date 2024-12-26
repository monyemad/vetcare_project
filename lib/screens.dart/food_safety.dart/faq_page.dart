import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                S.of(context).faq,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Q: What are the best practices for storing animal feed? \n\n A: Store feed in a cool, dry place, away from direct sunlight and moisture. Use sealed containers to prevent contamination from pests or mold. \n\n Q: How can I tell if the feed has gone bad? \n\n A: Check for unusual smells, discoloration, or mold growth. If you notice any of these signs, discard the feed immediately to avoid health risks. \n\n Q: How often should I clean the feeding equipment for farm animals? \n\n A: Clean feeding equipment daily to prevent the buildup of bacteria and mold. Regular cleaning helps maintain the health of your farm animals. \n\n Q: Is it safe to give leftover food scraps to farm animals? \n\n A: It’s generally not recommended to feed farm animals leftover food scraps, as they may contain harmful substances or lead to imbalanced nutrition. Stick to feed designed for each specific type of farm animal. \n\n Q: How do I ensure that poultry feed remains uncontaminated? \n\n A: Store poultry feed in sealed containers and keep it dry. Regularly clean feeders and ensure that water is fresh and uncontaminated. \n\n Q: What precautions should I take when feeding poultry? \n\n A: Avoid feeding moldy or spoiled feed, and clean feeding areas regularly to prevent diseases. Monitor your poultry’s health and adjust their diet as needed. \n\n Q: How should I store fish feed to maintain its quality? \n\n A: Store fish feed in a cool, dry place, ideally in an airtight container. This helps preserve the nutritional value and prevents spoilage. \n\n Q: What are the signs of overfeeding fish? \n\n A: Signs include cloudy water, uneaten food settling at the bottom, and increased algae growth. Overfeeding can lead to water contamination and harm the fish’s health. \n\n Q: What should I do if I suspect my animals have eaten contaminated food? \n\n A: Immediately stop feeding them the suspected food, clean all feeding equipment, and monitor the animals closely. Contact a veterinarian if any signs of illness appear. \n\n Q: How can I prevent cross-contamination when handling different types of feed? \n\n A: Use separate containers and utensils for different types of feed. Always wash your hands and equipment thoroughly after handling each type to avoid cross-contamination.",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
