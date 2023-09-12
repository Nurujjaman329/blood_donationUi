import 'package:firstapp/pages/mainpage.dart';
import 'package:firstapp/auth/signup_page.dart';
import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/fontstyle.dart';
import 'package:firstapp/utils/image_static.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  imagespath.login_page,
                  scale: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Bangladesh Scouts",
                  style: Style.extrasmaller600w,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Blood Bank",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 8, top: 8, left: 10, right: 10),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorCode.primary_color),
                        borderRadius: BorderRadius.all(
                          Radius.circular(14.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorCode.primary_color)),
                      hintText: "Phone Number ",
                      prefixIcon: Icon(
                        Icons.call,
                        color: ColorCode.primary_color,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 8, top: 8, left: 10, right: 10),
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
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: ColorCode.primary_color,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 8, top: 8, left: 10, right: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .07,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: ColorCode.primary_color,
                          borderRadius:
                              BorderRadius.all(Radius.circular(14.0))),
                      child: Text(
                        "Sign In",
                        style: Style.extrasmallerw17,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const InkWell(
                  child: Text(
                    "Forget Password",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Do not have an account?"),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      child: const Text(
                        "SignUp",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
