import 'package:flutter/material.dart';
import 'package:podcast_app/components/textstyle.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    double getheight = MediaQuery.of(context).size.height;
    return Container(
      decoration: decorate,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Verification link has been send',
                  style: boldtext,
                ),
                SizedBox(
                  height: getheight * 0.03,
                ),
                Text(
                  'Check your mails to verify account',
                  style: mediumtext,
                ),
                SizedBox(
                  height: getheight * 0.2,
                ),
                CircularProgressIndicator(
                  color: const Color.fromARGB(255, 185, 94, 94),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
