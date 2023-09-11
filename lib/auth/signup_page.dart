import 'package:firstapp/auth/login_page.dart';
import 'package:firstapp/auth/phone_verification.dart';
import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/fontstyle.dart';
import 'package:firstapp/utils/image_static.dart';
import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorCode.primary_color,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "SignUp Page ",
          style: Style.extrasmallerw17,
        ),
      ),
      body: Container(
        color: ColorCode.background_color,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagespath.login_page,
              scale: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 8,
                top: 8,
                left: 10,
                right: 10,
              ),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorCode.primary_color),
                    borderRadius: BorderRadius.all(
                      Radius.circular(14.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorCode.primary_color,
                    ),
                  ),
                  hintText: "01XXXXXXXXX ",
                  prefixIcon: Icon(
                    Icons.call,
                    color: ColorCode.primary_color,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerifyPage()));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                  top: 8,
                  left: 10,
                  right: 10,
                ),
                child: Container(
                  width: 350,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: ColorCode.primary_color,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Text(
                    "Continue",
                    style: Style.extrasmallerw17,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "You'll receive a 4 digit code to verify next",
              style: TextStyles.inside,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already Have An Account?"),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
