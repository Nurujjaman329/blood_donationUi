import 'package:firstapp/registerpage/registration_page.dart';
import 'package:firstapp/utils/color_static.dart';
import 'package:firstapp/utils/fontstyle.dart';
import 'package:firstapp/utils/image_static.dart';
import 'package:firstapp/utils/sized_box.dart';
import 'package:firstapp/utils/textstyle_static.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    String _code = "";
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: ColorCode.primary_color,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Verify Phone",
          style: Style.extrasmallerw17,
        ),
      ),
      body: SafeArea(
        child: Container(
          color: ColorCode.background_color,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * .25,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        imagespath.login_page,
                        scale: 10,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .08,
                ),

                // const Spacer(),
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: PinFieldAutoFill(
                    textInputAction: TextInputAction.done,
                    decoration: BoxLooseDecoration(
                      strokeColorBuilder:
                          PinListenColorBuilder(Colors.black, Colors.black26),
                      bgColorBuilder: const FixedColorBuilder(Colors.white),
                      strokeWidth: 1.2,
                    ),
                    currentCode: _code,
                    onCodeSubmitted: (code) {},
                    onCodeChanged: (code) {
                      if (code!.length == 4) {
                        FocusScope.of(context).requestFocus(FocusNode());
                      }
                    },
                    codeLength: 4,
                  ),
                ),
                //const Spacer(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .07,
                ),

                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationPage()));
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("Verify"),
                    decoration: BoxDecoration(
                        color: ColorCode.primary_color,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 65),
                  child: Row(
                    children: [
                      Text(
                        "Didn't receive code?",
                        style: Style.extrasmaller600w,
                      ),
                      Sizedmodifys.quswidth,
                      Text(
                        "Resend",
                        style: TextStyles.greenColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
