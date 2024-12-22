import 'package:flutter/material.dart';
import 'package:vetcare_project/widget/custom_button.dart';
import 'package:vetcare_project/widget/custom_login.dart';
import 'package:vetcare_project/widget/custom_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool sec = true;

  var visable = const Icon(Icons.visibility_rounded);

  var visableoff = const Icon(Icons.visibility_off_rounded);

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Image(image: AssetImage("assets/images/login.png"),fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.only(bottom: 80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome to\n VetCare",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const CustomText(text: "Email:"),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomLogin(
                    hintText: "Enter your email",
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icons.email_rounded,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(text: "Password:"),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomLogin(
                    hintText: "Enter your password",
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: (){},
                            child: const Text("Forget password?",
                              style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),
                  CustomButton(text: "LOGIN", onPressed: (){}),
                  const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Register Now',
                          style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffD11C1C)),
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
    );
  }
}
