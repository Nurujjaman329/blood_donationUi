import 'package:firstapp/registerpage/login_page.dart';
import 'package:firstapp/registerpage/phone_verification.dart';
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
      //backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorCode.primary_color,
        centerTitle: true,
        //actions: [Icon(Icons.)],
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Continue With Phone ",
          style: Style.extrasmaller700w,
        ),
        //leading: Icon(Icons.arrow_back, color: Colors.black),
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorCode.primary_color),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorCode.primary_color)),
                  hintText: "01XXXXXXXXX ",
                  prefixIcon: Icon(
                    Icons.call,
                    color: ColorCode.primary_color,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                //Navigator.push(context,
                //    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VerifyPage()));
                },
                child: Container(
                  width: 350,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text("Continue"),
                  decoration: BoxDecoration(
                      color: ColorCode.primary_color,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "You'll receive a 4 digit code to verify next",
              style: TextStyles.inside,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already Have An Account?"),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
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
