import 'package:firstapp/mainpage/mainpage.dart';
import 'package:firstapp/registerpage/signup_page.dart';
import 'package:firstapp/utils/color_static.dart';
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
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  imagespath.login_page,
                  scale: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Bangladesh Scouts"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Blood Bank",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorCode.text_color),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      hintText: "Phone Number ",
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorCode.text_color),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  },
                  child: Container(
                    width: 350,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("Sign In"),
                    decoration: BoxDecoration(
                        color: ColorCode.button_color,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    "Forget Password",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do not have an account?"),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Text(
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
