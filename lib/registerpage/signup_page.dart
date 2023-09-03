import 'package:firstapp/registerpage/login_page.dart';
import 'package:firstapp/registerpage/phone_verification.dart';
import 'package:firstapp/utils/color_static.dart';
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
        backgroundColor: Colors.white,
        centerTitle: true,
        //actions: [Icon(Icons.)],
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Continue With Phone ", style: TextStyles.app_bar),
        //leading: Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: Container(
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
            Container(
              width: 350,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "01*********",
                    prefixIcon: Icon(Icons.phone),
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
                      color: ColorCode.button_color,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
              ),
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
