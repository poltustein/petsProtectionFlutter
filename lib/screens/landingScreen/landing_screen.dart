import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
        ),
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white.withOpacity(0.4),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Home",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.4), fontSize: 16),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(72),
                    child: Image.asset(
                      'assets/michael-dam-mEZ3PoFGs_k-unsplash.jpg',
                      fit: BoxFit.cover, height: 72, width: 72,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 4),
                  child: Text("Welcome", style: TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 12),),
                ),
                Text("Sabrina", style: TextStyle(color: Colors.white, fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text("+44 7700 900915", style: TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 14),),
                ),
                Padding(padding: EdgeInsets.all(48)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.account_circle_outlined, color: Colors.white.withOpacity(0.4),),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text("Profile", style: TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 14),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Image.asset('assets/126333676916257259133595.png', color: Colors.white.withOpacity(0.4), height: 24, width: 24,),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text("My Dogs", style: TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 14),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.save, color: Colors.white.withOpacity(0.4),),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text("Saved Videos", style: TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 14),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.tv, color: Colors.white.withOpacity(0.4),),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text("Membership", style: TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 14),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.headphones, color: Colors.white.withOpacity(0.4),),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text("Support", style: TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 14),),
                      ),
                    ],
                  ),
                ),
                Spacer(flex: 1,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(Icons.logout, color: Colors.white.withOpacity(0.4),),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text("Logout", style: TextStyle(color: Colors.white.withOpacity(0.4), fontSize: 14),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff191919),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline), label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: "Add Dog"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: "Account"),
          ],
        ),
      ),
    );
  }
}
