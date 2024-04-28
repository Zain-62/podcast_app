import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ElevatedButon extends StatelessWidget {
  late VoidCallback onpress;
  String childtext;
  ElevatedButon({super.key, required this.onpress, required this.childtext});

  @override
  Widget build(BuildContext context) {
    double mediaheight = MediaQuery.of(context).size.height;
    double mediawidth = MediaQuery.of(context).size.width;
    return SizedBox(
        height: mediaheight * 0.06,
        width: mediawidth * 0.5,
        child: ElevatedButton(
            onPressed: onpress,
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 194, 131, 131),
                foregroundColor: Colors.white),
            child: Text(
              childtext,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 1),
            )));
  }
}
