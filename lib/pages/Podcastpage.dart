import 'package:flutter/material.dart';
import 'package:podcast_app/components/textstyle.dart';

class PodCastPage extends StatefulWidget {
  String currentcover;
  String currentsinger;
  String currenttitle;
  PodCastPage(
      {super.key,
      required this.currentcover,
      required this.currentsinger,
      required this.currenttitle});

  @override
  State<PodCastPage> createState() => _PodCastPageState();
}

class _PodCastPageState extends State<PodCastPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: decorate,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        )),
                    Text(
                      widget.currenttitle,
                      style: normaltext,
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: height * 0.50,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage(widget.currentcover),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Slider.adaptive(value: 0.0, onChanged: (value) {}),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.keyboard_double_arrow_left,
                        size: 30,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.play_arrow,
                        size: 50,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.keyboard_double_arrow_right,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
