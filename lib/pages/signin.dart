import 'package:flutter/material.dart';
import 'package:podcast_app/components/elevatedbutton.dart';
import 'package:podcast_app/components/textstyle.dart';
import 'package:podcast_app/components/textfield.dart';
import 'package:podcast_app/pages/foryou.dart';
import 'package:podcast_app/pages/signup.dart';

class SIgnIn extends StatefulWidget {
  const SIgnIn({super.key});

  @override
  State<SIgnIn> createState() => _SIgnInState();
}

class _SIgnInState extends State<SIgnIn> {
  @override
  Widget build(BuildContext context) {
    double getheight = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    double getwidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: decorate,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Do not miss\nany podcast !',
                      style: boldtext,
                    ),
                    SizedBox(
                      height: getheight * 0.03,
                    ),
                    Text(
                      'learn more about a topic, keep up with current events',
                      style: lighttext,
                    ),
                    SizedBox(
                      height: getheight * 0.04,
                    ),
                    Center(
                      child: Text(
                        'Login',
                        style: mediumtext,
                      ),
                    ),
                    SizedBox(
                      height: getheight * 0.03,
                    ),
                    TxtField(txt: "Email"),
                    SizedBox(
                      height: getheight * 0.03,
                    ),
                    TxtField(txt: "Password"),
                    SizedBox(
                      height: getheight * 0.07,
                    ),
                    Center(
                      child: ElevatedButon(
                        onpress: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const ForYouPage()));
                        },
                        childtext: "Continue",
                      ),
                    ),
                    SizedBox(
                      height: getheight * 0.05,
                    ),
                    Row(
                      children: [
                        Text(
                          "do not have a account",
                          style: lighttext,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((BuildContext context) =>
                                      RegisterPage())));
                            },
                            child: Text(
                              "Register Now",
                              style: mediumtext,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
