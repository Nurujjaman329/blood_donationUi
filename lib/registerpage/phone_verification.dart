import 'package:firstapp/registerpage/registration_page.dart';
import 'package:firstapp/utils/button_custom.dart';
import 'package:firstapp/utils/color_static.dart';
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
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Verify Phone",
          style: TextStyles.app_bar,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Text(
                  "Code is sent to 01777777777",
                  style: TextStyles.inside,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .4,
                ),
                // const Spacer(),
                Padding(
                  padding: EdgeInsets.all(8.0),
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
                  height: MediaQuery.of(context).size.height * .2,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 65),
                  child: Row(
                    children: [
                      Text(
                        "Didn't receive code?",
                        style: TextStyles.qus,
                      ),
                      Sizedmodifys.quswidth,
                      Text(
                        "Resend",
                        style: TextStyles.greenColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
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
                        color: ColorCode.button_color,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
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
