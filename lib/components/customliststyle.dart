import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:podcast_app/components/textstyle.dart';

Widget CustomList(
    {required String title,
    required String cover,
    required String singer,
    ontap}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                image: DecorationImage(
                    image: AssetImage(cover), fit: BoxFit.contain)),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: normaltext,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                singer,
                style: lighttext,
              )
            ],
          )
        ],
      ),
    ),
  );
}
