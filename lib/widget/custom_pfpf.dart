import 'package:flutter/material.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:intl/intl.dart';

class CustomPFPF extends StatelessWidget {
  final String image1;
  final String image2;
  final String text;
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;
  const CustomPFPF(
      {super.key,
      required this.image1,
      required this.image2,
      required this.text,
      required this.onPressed1,
      required this.onPressed2});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image1),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Image(
                image: AssetImage(image2),
                height: 120,
                width: 120,
              ),
            ),
            const SizedBox(
              height: 51,
            ),
            Stack(
              children: [
                Container(
                  height: 400,
                  width: 400,
                  decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(155),
                        topRight: Radius.circular(155)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: isArabic() ? 0 : 45, right: isArabic() ? 45 : 0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Text(
                        S.of(context).help,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: isArabic() ? 0 : 200,
                            left: isArabic() ? 200 : 0),
                        child: ElevatedButton(
                          onPressed: onPressed1,
                          style: ElevatedButton.styleFrom(
                            elevation: 12,
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(S.of(context).form,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.only(
                            left: isArabic() ? 0 : 150,
                            right: isArabic() ? 150 : 0),
                        child: ElevatedButton(
                          onPressed: onPressed2,
                          style: ElevatedButton.styleFrom(
                            elevation: 12,
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            S.of(context).complaint,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
