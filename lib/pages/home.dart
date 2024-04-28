import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:podcast_app/components/elevatedbutton.dart';
import 'package:podcast_app/components/textstyle.dart';
import 'package:podcast_app/pages/signin.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double mediaheight = MediaQuery.of(context).size.height;
    double mediawidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: decorate,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(top: 90, left: 10),
          child: Column(
            children: [
              const Text('Enjoy Your \nPodcast,Enjoy\n your life',
                  style: boldtext),
              const Gap(15),
              const Text(
                  'Listen to your favorite podcast for free,\n anywhere and offline with podlist',
                  style: lighttext),
              const Gap(25),
              ElevatedButon(
                  onpress: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const SIgnIn()));
                  },
                  childtext: 'Start Listening'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 60),
                  child: Container(
                      width: mediawidth * 0.7,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 2, 2, 2)
                                .withOpacity(0.5),
                            spreadRadius: 8,
                            blurRadius: 2,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(60),
                        image: const DecorationImage(
                            image: AssetImage('assets/log2.png'),
                            fit: BoxFit.cover),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
