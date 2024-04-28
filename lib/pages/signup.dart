import 'package:flutter/material.dart';
import 'package:podcast_app/components/elevatedbutton.dart';
import 'package:podcast_app/components/textfield.dart';
import 'package:podcast_app/components/textstyle.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    double getheight = MediaQuery.of(context).size.height;
    return Container(
        decoration: decorate,
        child: SafeArea(
            child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 40, right: 10, left: 10),
              child: Column(
                children: [
                  Text(
                    'SignUp',
                    style: boldtext,
                  ),
                  SizedBox(
                    height: getheight * 0.03,
                  ),
                  TxtField(txt: "Name"),
                  SizedBox(
                    height: getheight * 0.03,
                  ),
                  TxtField(txt: "Email"),
                  SizedBox(
                    height: getheight * 0.03,
                  ),
                  TxtField(txt: "Password"),
                  SizedBox(
                    height: getheight * 0.03,
                  ),
                  TxtField(txt: "Confirm Password"),
                  SizedBox(
                    height: getheight * 0.03,
                  ),
                  SizedBox(
                    height: getheight * 0.04,
                  ),
                  Center(
                    child: ElevatedButon(
                      onpress: () {},
                      childtext: "Rgister",
                    ),
                  ),
                ],
              ),
            ),
          )),
        )));
  }
}
