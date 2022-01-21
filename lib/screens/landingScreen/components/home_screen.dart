import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pwd_app/models/SubscriptionPlans.dart';
import 'package:pwd_app/screens/planScreen/plan_screen.dart';
import 'package:pwd_app/webservice/webservice.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) ;

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen>{



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

    return Material(
      child: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: InkWell(
                    child: Icon(Icons.account_circle_outlined, color: Colors.white.withOpacity(0.4),),
                  onTap: (){
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Demonstration Video", style: TextStyle(color: Colors.white, fontSize: 14),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
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


                            //Image.asset('assets/Protection Dogs Worldwide-203.jpg', fit: BoxFit.cover,),
                          ),
                        ),
                        )
                        )

                ]
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("An Inside to the life at Protection Dogs", style: TextStyle(color: Colors.yellow[700], fontSize: 16),),
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              height: 175,
                              child: Image.asset(
                                'assets/Protection Dogs Worldwide-203.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "An Inside to the life at Protection Dogs",
                                  style: TextStyle(
                                      color: Colors.yellow[700], fontSize: 16),
                                ),
                                Icon(
                                  Icons.save,
                                  color: Colors.white.withOpacity(0.4),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Training",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.4),
                                      fontSize: 12),
                                ),
                                Text("5 Days ago",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.4),
                                        fontSize: 12))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Container(color: Colors.black.withOpacity(0.7), height: 225, width: double.infinity,),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.all(16)),
                            Row(
                              children: [
                                Card(
                                  color: Colors.yellow[700],
                                  shape: CircleBorder(),
                                  child: SizedBox(
                                    width: 48,
                                    height: 48,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Image.asset('assets/151627323516313445444151-128.png'),
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text("PREMIUM TRAINING\nVIDEOS MEMBERSHIP", style: TextStyle(fontSize: 12),),
                                  ),
                                )
                              ],
                            ),
                            Text("Protection Dogs GOLD\nStarting at \$20/month", style: TextStyle(color: Colors.white, fontSize: 12),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MaterialButton(
                                  onPressed: () async {
                                      final SubscriptionPlans plansResponse = await WebService().subscriptionPlans('piyushgoel28@gmail.com','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJwaXl1c2hnb2VsMjhAZ21haWwuY29tIn0.QP8ywW_c1_ZXzXrJlNxtxXNxvf6AQ6N2w2K_U5K7GVsDTqL725o-TIt1s52BX5bo2Wv7VzZuMvi-JBPr8VuCgQ');
                                     log(plansResponse.toJson().toString());
                                      Get.to(PlanScreen(plans: plansResponse));
                                  }
                                  , color: Colors.yellow[700], child: Text("BUY NOW", style: TextStyle(fontSize: 12),), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _hhState createState() => _hhState();
}

class _hhState extends State<Body> {
  bool fullScreen = false;

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


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
          Flexible(flex: 5, child: _buildBurnerWidgetContent()),
        ]));
  }
}

