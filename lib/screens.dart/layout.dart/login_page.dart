import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vetcare_project/generated/l10n.dart';
import 'package:vetcare_project/screens.dart/layout.dart/home_page.dart';
import 'package:vetcare_project/main.dart';
import 'package:vetcare_project/widget/buttons.dart/custom_button.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_login.dart';
import 'package:vetcare_project/widget/login_and_formfield.dart/custom_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isArabic() {
    return Intl.getCurrentLocale() == "ar";
  }

  bool sec = true;

  var visable = const Icon(Icons.visibility_rounded);

  var visableoff = const Icon(Icons.visibility_off_rounded);

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 400.0),
                child: Image(
                  image: AssetImage("assets/images/login.png"),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 200.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: isArabic()
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      padding: EdgeInsets.only(
                          left: isArabic() ? 40 : 0,
                          right: isArabic() ? 0 : 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.translate_rounded,
                                color: Colors.blue, size: 30),
                            onPressed: () {
                              if (localeNotifier.value == const Locale('en')) {
                                localeNotifier.changeLocale(const Locale('ar'));
                              } else {
                                localeNotifier.changeLocale(const Locale('en'));
                              }
                            },
                          ),
                          Text(
                            localeNotifier.value == const Locale('en')
                                ? 'English'
                                : 'العربية',
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: Row(
                        children: [
                          Text(
                            S.of(context).welcome,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomText(text: S.of(context).email),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomLogin(
                      hintText: S.of(context).yourEmail,
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: Icons.email_rounded,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomText(text: S.of(context).password),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomLogin(
                      hintText: S.of(context).yourPassword,
                      controller: password,
                      keyboardType: TextInputType.visiblePassword,
                      prefixIcon: Icons.lock_rounded,
                      suffixIcon: IconButton(
                        icon: sec ? visableoff : visable,
                        onPressed: () {
                          setState(() {
                            sec = !sec;
                          });
                        },
                      ),
                      isObscureText: sec,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              Text(
                                S.of(context).forget,
                                style: const TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                        text: S.of(context).login,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomeScreen();
                          }));
                        }),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.of(context).account,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            S.of(context).regester,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffD11C1C)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
