import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pwd_app/models/login/login.dart';
import 'package:pwd_app/screens/landingScreen/components/home_screen.dart';
import 'package:pwd_app/screens/landingScreen/landing_screen.dart';
import 'package:pwd_app/screens/verifyotp/verify_otp_screen.dart';
import 'package:pwd_app/webservice/webservice.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {

  Future<String> read (String key) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.getString(key) ?? "";
  }

  String name = "";
  String contact = "";
  String token = "";
  String emailid="";

  void initState(){

    read('name').then((value) => setState((){
      name = value;
    }));

    read('token').then((value) => setState((){
      token = value;
    }));

    read('emailid').then((value) => setState((){
      emailid = value;
    }));

    read('contact').then((value) => setState((){
      contact = value;
    }));
    super.initState();
  }

  final emailTE = TextEditingController();
  final phoneTE = TextEditingController();
  final nameTE = TextEditingController();

  @override
  Widget build(BuildContext context) {

    emailTE.text = emailid;
    phoneTE.text = contact;
    nameTE.text = name;


    return Material(
      child: Stack(
        children: [

          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black,
          ),

          Positioned(
            top: -15.0,
            left: 5.0,
            child: InkWell(
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
                      "Account",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ):Container(),
            ),
          ),

          // FractionallySizedBox(
          //     heightFactor: 1,
          //     child: Image.asset(
          //       'assets/Protection Dogs Worldwide-90.jpg',
          //       fit: BoxFit.cover,
          //     )),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  color: const Color(0xff191919),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: TextField(
                      controller: nameTE,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'name',
                          hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.4))),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  color: const Color(0xff191919),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: TextField(
                      controller: emailTE,
                      enabled: false,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: emailid,
                          hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.4))),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  color: const Color(0xff191919),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: TextField(
                      controller: phoneTE,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: contact,
                          hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.4))),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: MaterialButton(
                  height: 60,
                  minWidth: double.infinity,
                  onPressed: () async {
                    if (nameTE.text.isNotEmpty &&
                        phoneTE.text.isNotEmpty ) {
                      final networkResponse = await WebService().updateUser(nameTE.text, emailTE.text,
                          phoneTE.text,token);
                      if (networkResponse.status == "SUCCESS") {
                        final prefs = await SharedPreferences.getInstance();
                        prefs.setString('name', nameTE.text);
                        prefs.setString('contact', phoneTE.text);
                        prefs.commit();
                        log('pressed update!!');
                        Get.back();
                      }
                      Toast.show(networkResponse.reason!, context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                    }
                    log("out of update");
                  },
                  color: Colors.yellow[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                  child: Text(
                    "Update",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
