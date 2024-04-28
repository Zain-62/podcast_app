import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:podcast_app/components/customliststyle.dart';
import 'package:podcast_app/components/podcastlist.dart';
import 'package:podcast_app/components/textstyle.dart';
import 'package:podcast_app/pages/Podcastpage.dart';

class ForYouPage extends StatefulWidget {
  const ForYouPage({super.key});

  @override
  State<ForYouPage> createState() => _ForYouPageState();
}

class _ForYouPageState extends State<ForYouPage> {
  String currentcover = '';
  String currentsinger = '';
  String currenttitle = '';

  IconData btnicon = Icons.play_arrow;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decorate,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Poscast for you',
            style: normaltext,
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: musiclist.length,
                    itemBuilder: (context, Index) => CustomList(
                        title: musiclist[Index]['title'],
                        cover: musiclist[Index]['Cover'],
                        singer: musiclist[Index]['singer'],
                        ontap: () {
                          setState(() {
                            currentcover = musiclist[Index]['Cover'];
                            currentsinger = musiclist[Index]['singer'];
                            currenttitle = musiclist[Index]['title'];
                          });
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => PodCastPage(
                                  currentcover: currentcover,
                                  currentsinger: currentsinger,
                                  currenttitle: currenttitle)));
                        }))),
          ],
        ),
      ),
    );
  }
}
