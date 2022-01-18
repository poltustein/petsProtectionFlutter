import 'package:flutter/material.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back, color: Colors.white.withOpacity(0.5),),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Choose a Plan", style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16, fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Text("Choose Your Plan", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Best Plans For You", style: TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 12),),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              color: Color(0xff191919),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0, top: 24),
                            child: Card(
                              shape: CircleBorder(),
                              color: Colors.yellow[700],
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.star_outlined, size: 56,),
                              )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: Text("BASIC", style: TextStyle(color: Colors.white),),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 16),
                        child: Container(
                          width: 2,
                          height: 125,
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 36.0, left: 50),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("\$", style: TextStyle(color: Colors.yellow[700], fontSize: 32),),
                                Text("15", style: TextStyle(color: Colors.white, fontSize: 32),),
                              ],
                            ),
                            Text("Monthly", style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16),),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Premium Videos", style: TextStyle(color: Colors.white, fontSize: 12),),
                                Text("Add your dog", style: TextStyle(color: Colors.white, fontSize: 12),),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Card(
                          color: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16))),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Icon(Icons.check),
                                Text("Activated")
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: MaterialButton(onPressed: (){}, color: Colors.white, child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text("Cancel"),
                    ), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),),
                  )
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              color: Color(0xff191919),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0, top: 24),
                            child: Card(
                                shape: CircleBorder(),
                                color: Colors.yellow[700],
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(width: 56, height: 56, child: Image.asset('assets/151627323516313445444151-128.png'),),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: Text("PREMIUM", style: TextStyle(color: Colors.white),),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 16),
                        child: Container(
                          width: 2,
                          height: 125,
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 36.0, left: 50),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("\$", style: TextStyle(color: Colors.yellow[700], fontSize: 32),),
                                Text("25", style: TextStyle(color: Colors.white, fontSize: 32),),
                              ],
                            ),
                            Text("Monthly", style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16),),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Premium Videos", style: TextStyle(color: Colors.white, fontSize: 12),),
                                Text("Add your dog", style: TextStyle(color: Colors.white, fontSize: 12),),
                                Text("Chat with trainer", style: TextStyle(color: Colors.white, fontSize: 12),),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(16))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16))),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text("20% OFF")
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Spacer(flex: 1,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: MaterialButton(onPressed: (){}, child: Text("Buy Now", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),), minWidth: double.infinity, color: Colors.yellow[700], height: 60, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),),
            )
          ],
        ),
      ),
    );
  }
}
