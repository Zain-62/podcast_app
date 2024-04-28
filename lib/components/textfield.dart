import 'package:flutter/material.dart';
import 'package:podcast_app/components/textstyle.dart';

// ignore: must_be_immutable
class TxtField extends StatelessWidget {
  String txt;
  TxtField({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: lighttext,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(30)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(30)),
          label: Text(
            txt,
            style: lighttext,
          )),
    );
  }
}
