// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:pwd_app/models/SubscriptionPlans.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/services.dart';

class CategoryVideoScreen extends StatefulWidget {

  final String categoryName;

  CategoryVideoScreen({Key? key, required this.categoryName});

  _CategoryVideoScreen createState() => new _CategoryVideoScreen();
}

class _CategoryVideoScreen extends State<CategoryVideoScreen>{

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return SafeArea(
      child: Material(
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          widget.categoryName,
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    widget.categoryName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 175,
                        child: OrientationBuilder(
                            builder: (context, orientation) {

                              switch(orientation){
                                case Orientation.portrait:
                                  return Scaffold(
                                      resizeToAvoidBottomInset: true,
                                      backgroundColor: Theme.of(context).appBarTheme.color,
                                      appBar: AppBar(
                                        // title: Text(widget.video.title),
                                        title: Text(
                                          "Detail",
                                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      body: Body());

                                  // TODO: Handle this case.
                                  break;
                                case Orientation.landscape:
                                  return Scaffold(
                                      resizeToAvoidBottomInset: true,
                                      backgroundColor: Theme.of(context).appBarTheme.color,

                                      body: Body());

                                  // TODO: Handle this case.
                                  break;
                              }
                            }
            )
                      )
                    )
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Fully Trained Protection Dog", style: TextStyle(color: Colors.yellow[700], fontSize: 16),),
                        Icon(Icons.save, color: Colors.white.withOpacity(0.4),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Training", style: TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 12),),
                        Text("5 Days ago", style: TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 12))
                      ],
                    )
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _hhState createState() => _hhState();
}

class _hhState extends State<Body> {
  bool fullScreen=false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
          Flexible(flex: 5, child: _buildBurnerWidgetContent()),
        ]));
  }

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: "bC4O4_E9tSk",
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  YoutubePlayerBuilder _buildBurnerWidgetContent() {
    return YoutubePlayerBuilder(
        onEnterFullScreen: () {
          this.fullScreen = true;
        },
        onExitFullScreen: () {
          this.fullScreen = false;
        },
        player: YoutubePlayer(
          aspectRatio: 16 / 9,
          width: double.infinity,
          controller: _controller,
          showVideoProgressIndicator: true,
          onReady: () {},
          progressColors: ProgressBarColors(
            playedColor: Colors.amber,
            handleColor: Colors.amberAccent,
          ),
        ),
        builder: (context, player) {
          return Column(
            children: [
              // some widgets
              // player,
              //some other widgets
            ],
          );
        });
  }

}

