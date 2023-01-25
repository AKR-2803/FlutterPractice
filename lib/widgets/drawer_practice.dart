import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; //googlefonts package
import 'package:hexcolor/hexcolor.dart'; //hexColor package
import 'package:practice_one_register/register_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drawer_Practice",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drawer Practice"),
        ),
        body: Center(
          child: Text(
            "Drawer Practice",
            style: GoogleFonts.lato(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 30.0,
                decorationStyle: TextDecorationStyle.dotted),
          ),
        ),
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: HexColor("#2025A7")),
                  accountName:
                      Text("Aaryaveer Rajput", style: GoogleFonts.lato()),
                  accountEmail: Text("aaryaveerrajput001@gmail.com",
                      style: GoogleFonts.lato()),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://media.istockphoto.com/id/1226883131/photo/human-figure-icon-graphic-as-user-login-button-on-white-keyboard.jpg?b=1&s=170667a&w=0&k=20&c=9jn8gBXXYJ08mQO7gUPn1oMslu1RlMDL_EDoNBNS1NE="),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home_filled,
                    color: Colors.brown,
                    size: 35.0,
                  ),
                  title: Text(
                    "Home".toUpperCase(),
                    style: GoogleFonts.lato(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  horizontalTitleGap: 15.0,
                  // subtitle: Text("MyHomeSubtitle"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.gamepad_rounded,
                    color: Colors.blueAccent,
                    size: 35.0,
                  ),
                  title: Text(
                    "Gallery".toUpperCase(),
                    style: GoogleFonts.lato(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  horizontalTitleGap: 15.0,
                ),
                ListTile(
                  leading: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.red,
                    size: 35.0,
                  ),
                  title: Text(
                    "Favourites".toUpperCase(),
                    style: GoogleFonts.lato(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  horizontalTitleGap: 15.0,
                ),
                ListTile(
                  leading: Icon(
                    Icons.notification_important_outlined,
                    color: Colors.cyanAccent,
                    size: 35.0,
                  ),
                  title: Text(
                    "Notification".toUpperCase(),
                    style: GoogleFonts.lato(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  horizontalTitleGap: 15.0,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                  },
                  leading: Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.lime,
                    size: 35.0,
                  ),
                  title: Text(
                    "Invite".toUpperCase(),
                    style: GoogleFonts.lato(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  horizontalTitleGap: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
