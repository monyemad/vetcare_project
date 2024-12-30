import 'package:flutter/material.dart';
import 'package:vetcare_project/screens.dart/animals_screens.dart/animal_page.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/screens.dart/food_safety.dart/food_safety_page.dart';
import 'package:vetcare_project/widget/custom_home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(""),
              accountEmail: const Text(""),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    '',
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                // color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage(
                      '',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.recommend_rounded),
              title: Text(S.of(context).reco),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return const SupportScreen();
                // }));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.checklist_rounded),
              title: Text(S.of(context).checkList),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return const ComplainScreen();
                // }));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text(S.of(context).setting),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return const SettingScreen();
                // }));
              },
            ),
            const Divider(),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
          const Image(
            image: AssetImage("assets/images/login.png"),
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      _globalKey.currentState?.openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
                CustomHome(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const AnimalScreen();
                      }));
                    },
                    image: "assets/images/animal.gif",
                    text: S.of(context).animal),
                const SizedBox(
                  height: 15,
                ),
                CustomHome(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const FoodSafetyScreen();
                      }));
                    },
                    image: "assets/images/food safety.gif",
                    text: S.of(context).food),
                const SizedBox(
                  height: 15,
                ),
                CustomHome(
                    onPressed: () {},
                    image: "assets/images/chats.gif",
                    text: S.of(context).emergencyCase),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
