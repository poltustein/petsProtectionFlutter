import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pwd_app/screens/planScreen/plan_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Icon(Icons.account_circle_outlined, color: Colors.white.withOpacity(0.4),),
            ),
            SizedBox(
              width: double.infinity,
              height: 175,
              child: Image.asset('assets/Protection Dogs Worldwide-203.jpg', fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Premium Videos", style: TextStyle(color: Colors.white, fontSize: 14),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 175,
                        child: Image.asset('assets/Protection Dogs Worldwide-203.jpg', fit: BoxFit.cover,),
                      ),
                    ),
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
                                "Fully Trained Protection Dog",
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
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text("PREMIUN TRAINING\nVIDEOS MEMBERSHIP", style: TextStyle(fontSize: 12),),
                                ),
                              )
                            ],
                          ),
                          Text("Protection Dogs GOLD\nStarting at \$20/month", style: TextStyle(color: Colors.white, fontSize: 12),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MaterialButton(onPressed: (){
                              Get.to(PlanScreen());
                            }, color: Colors.yellow[700], child: Text("BUY NOW", style: TextStyle(fontSize: 12),), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),),
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
    );
  }
}

