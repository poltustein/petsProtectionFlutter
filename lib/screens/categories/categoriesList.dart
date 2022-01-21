// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:pwd_app/models/SubscriptionPlans.dart';
import 'package:pwd_app/screens/categories/category_video_screen.dart';
import 'package:pwd_app/screens/landingScreen/components/home_screen.dart';
import 'package:pwd_app/screens/landingScreen/landing_screen.dart';

class CategoriesList extends StatelessWidget {


  CategoriesList({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
          color: Colors.black,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Container(
                    margin: EdgeInsets.only(top:30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        InkWell(
                          onTap: () {
                            Get.to(LandingScreen());
                            log(Get.currentRoute);
                          },
                          child: !Get.currentRoute.endsWith("LandingScreen") ? Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 45.0, left: 8.0),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 45.0),
                                child: Text(
                                  "Categories",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ):Container(),
                        ),

                      ],

                    ),
                  ),

                  Container(

                      margin: EdgeInsets.all(15.0),
                      child: Text("Choose a Category", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white),)
                  ),

                  InkWell(
                    onTap: (){
                      Get.to(CategoryVideoScreen(categoryName: "Puppy foundation"));
                    },
                    child: Container(
                        width: double.infinity,
                        decoration:  BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(16)
                        ),
                        margin: EdgeInsets.all(12.0),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Puppy foundation", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
                        )
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Get.to(CategoryVideoScreen(categoryName: "General Obedience"));
                    },
                    child: Container(
                        width: double.infinity,
                        decoration:  BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(16)
                        ),
                        margin: EdgeInsets.all(12.0),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("General Obedience", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
                        )
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Get.to(CategoryVideoScreen(categoryName: "Advance obedience"));
                    },
                    child: Container(
                        width: double.infinity,
                        decoration:  BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(16)
                        ),
                        margin: EdgeInsets.all(12.0),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Advance obedience", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
                        )
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Get.to(CategoryVideoScreen(categoryName: "Bite work development"));
                    },
                    child: Container(
                        width: double.infinity,
                        decoration:  BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(16)
                        ),
                        margin: EdgeInsets.all(12.0),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Bite work development", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
                        )
                    ),
                  ),


                  InkWell(
                    onTap: (){
                      Get.to(CategoryVideoScreen(categoryName: "Advance bite work"));
                    },
                    child: Container(
                        width: double.infinity,
                        decoration:  BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(16)
                        ),
                        margin: EdgeInsets.all(12.0),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Advance bite work", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
                        )
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Get.to(CategoryVideoScreen(categoryName: "Behaviour issues"));
                    },
                    child: Container(
                        width: double.infinity,
                        decoration:  BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(16)
                        ),
                        margin: EdgeInsets.all(12.0),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Behaviour issues", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
                        )
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Get.to(CategoryVideoScreen(categoryName: "Helper/decoy training"));
                    },
                    child: Container(
                        width: double.infinity,
                        decoration:  BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(16)
                        ),
                        margin: EdgeInsets.all(12.0),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Helper/decoy training", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
                        )
                    ),
                  ),



                ],



              ),


            ),
          )
      ),
    );
  }
}
