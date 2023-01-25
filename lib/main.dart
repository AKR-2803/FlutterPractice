//Login Page created on 20-01-2023
//abcdefghikjklmnioppqtrstuvwxuyzz
//day 3
/*
//avabcdefghijklmnopqtrstuvwxuyz
avabcdefghoijklmnopqrstucvwxyz
avabcddefghijkllmnopqtrstuvwxyz
avabcdrefghijklmnopqrstucvwxyz
abccdefghijklmnopqrstuvwxuuyz
abcdefghijklmnolpqrdsrtuvwxyz
abcdefghijklmnolpqswrstuvwdxyz
abcdfdefghikjklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
*/

//day4
/*
avbcfdefghjijklmnopqrsewrtuvwxyz
abcfdefghijklmnopqdrstuvwxyz
abcdefghijklmnopqwtrstuvwxyz
abcdefghijklmmnopqtrstuvwxyz
abcdefghjijklmnopqrstuvwx;yz
abcfdefghijlklmnpopqtrstuvwxyz
abccdefghijklmnkopqtyrsrtuvwxyz
abcdefghijklmnopqdtrstuvwxyz
abcdefghijklmnopqrstuvwxyz
abcfdesfghijklmnpopqtrstuvwx;yz
abcdefghijklmnopqtrstuvwx;yz
abcdefghijklmnopqrstucvwxyz
abcdefghijklmnopqtrstuvwxyz
abcdefghijklmnopqrstuxvwxyz4
abcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
avbcfdefghijklmnopqrstuxvwxyz
abcdefghijklmnolpqrstuvwxyz
abcsdefghijklmnopqtrstuvwxyz
abcdegfghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
abcdefghijklmmnopqrstuvwxyz
abcdefghijklmnopqrstuvwx;yz
abcdefghijklmnopqrstuvwxyz
abcfdefghijkllmnopqrstwucvwxyz
abcdefghijklmnopqrstuvwxyz
abcdefghikjlklmnopqrsastuvwxyz
abcdefghijklmnopqdrstuvwxyz
abcdefghuijklmnopqrstuvwx;yz
abcdefghijklmnopqrstuvwxuyz
avbcdefghikjklmnopqrstuvwxyz
abcdefghijklmnopqdrstuvwxyz
abcdefghijklmnopqrstuvwxyz
abcdefhjijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqtrstuvwxyz
abcfdefghijklmnopqrstucwvwxyz
*/
//C:\23.8  D:\615

//Drawer Practice

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






















// ***************************************************

/*

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart'; //google fonts package
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; //fontawesome package
import 'package:hexcolor/hexcolor.dart'; //hexColor package
import 'package:practice_one_register/register_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = "";
  bool isTapped = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        isTapped = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => RegisterPage()));
      setState(() {
        isTapped = false;
      });
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //uncomment to see App Bar
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     "Fun App",
      //     style: GoogleFonts.lato(
      //       textStyle: TextStyle(color: Colors.white, fontSize: 25),
      //     ),
      //   ),
      //   backgroundColor: Colors.deepPurpleAccent,
      // ),

      //body
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/hey.png"),
                  Text(
                    "Hey $name!, Login to continue...",
                    //custom fonts (using googlefonts package)
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  // Text(
                  //   "Please Login to Continue",
                  //   style: GoogleFonts.lato(
                  //     textStyle: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 25,
                  //         fontWeight: FontWeight.w700),
                  //   ),
                  // ),
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Container(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Email or Phone Number",
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 5,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Username cannot be empty";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        SizedBox(height: 30),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                          hintText: "Password",
                            fillColor: Colors.pinkAccent,
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 5,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Password cannot be empty";
                            } else if (value.length < 6) {
                              return "Password should be atleast 6 characters long";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 8),
                        //sample image from network
                        // Image.network(
                        //   "https://media.istockphoto.com/id/1226883131/photo/human-figure-icon-graphic-as-user-login-button-on-white-keyboard.jpg?b=1&s=170667a&w=0&k=20&c=9jn8gBXXYJ08mQO7gUPn1oMslu1RlMDL_EDoNBNS1NE=",
                        // ),
                        Column(
                          children: [
                            //image from assets folder, edit pubspec.yaml to use local images
                            Image.asset(
                              "assets/forgot.png",
                              height: 80,
                              width: 100,
                              colorBlendMode: BlendMode.darken,
                              // color: Colors.deepPurpleAccent,
                            ),
                            Text(
                              "Forgot Password?",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w700,
                                  decorationStyle: TextDecorationStyle.wavy),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Material(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(30.0),
                          child: InkWell(
                            splashColor: Colors.red,
                            onTap: () => moveToHome(context),
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              height: 60,
                              width: isTapped ? 100 : 170,
                              alignment: Alignment.center,
                              child: isTapped
                                  ? Icon(
                                      Icons.done_outline_rounded,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Login",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),

                              // child: ElevatedButton(
                              //   style: ElevatedButton.styleFrom(
                              //     minimumSize: Size(170, 60),
                              //     side: BorderSide(width: 3, color: Colors.black12),
                              //     primary: Colors.deepPurple,
                              //     // shadowColor: Colors.deepPurpleAccent,
                              //     // shape: CircleBorder(
                              //     //   side:
                              //     // )
                              //     shape: RoundedRectangleBorder(
                              //       borderRadius: BorderRadius.circular(30),
                              //     ),
                              //   ),
                              //   onPressed: () {
                              //     Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (context) =>
                              //                 const RegisterPage()));
                              //   },
                              //   child: Text(
                              //     "Login",
                              //     style: TextStyle(
                              //         fontSize: 25,
                              //         color: Colors.white,
                              //         fontWeight: FontWeight.w400),
                              //   ),
                              // ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "OR",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Continue with social media",
                          style: GoogleFonts.lato(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 45,
                      width: 150,
                      //using fontAwesoome package to display fontAwesomeIcons
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.facebook),
                        iconSize: 50,
                        color: HexColor("#3b5998"),
                        onPressed: () {
                          print("FavIconFacebook Login");
                        },
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 150,
                      child: IconButton(
                          icon: FaIcon(FontAwesomeIcons.twitter),
                          iconSize: 50,
                          color: HexColor("#00acee"),
                          onPressed: () {
                            print("FavIconInsta Login");
                          }),
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

*/


// *******************************************************













/*    **********************EOF**************************      */


//Practice_Codes_For_Reference


//  Container(

//         padding: EdgeInsets.all(75),
//         alignment: Alignment.topLeft,
//         color: Colors.deepOrange,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [

//             Text("Login",style: TextStyle(color: Colors.white,fontSize: 50,),) ,
//             Text('Welcome Back',style: TextStyle(color: Colors.white,fontSize: 20,),)

//              ]

//          ) ,

// //         ),
//       ),
//     );
//   }
// }

//BottomNavigationBar Practice
// void main() => {runApp(MyApp())};

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "helloLoginApp",
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.redAccent,
//           title: Text(
//             "LoginPage...",
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         body: Text("BottomNavbar"),
//         bottomNavigationBar: BottomNavigationBar(
//           items: [
//             BottomNavigationBarItem(
//               label: "Home" ,
//               icon: Icon(Icons.home, color: Colors.redAccent),
//             ),
//             BottomNavigationBarItem(
//               label: "Settings",
//               icon: Icon(Icons.settings),
//             ),
//             BottomNavigationBarItem(
//               label: "Logout",
//               icon: Icon(Icons.logout),
//             ),
//           ],
//           selectedItemColor: Colors.orangeAccent,
//           unselectedItemColor: Colors.deepPurpleAccent,
//         ),
//       ),
//     );
//   }
// }

//Column
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "MyMaterialApp",
//       home: Scaffold(

//         appBar: AppBar(
//           title: Text(
//             "GetSetFlyFact",
//             style: TextStyle(fontSize: 20, color: Colors.purple),
//           ),
//         ),
//         body: Column(
//           children: [
//             //block 1
//             Expanded(
//               child: Container(
//                 child: Text(
//                   "First",
//                   style: TextStyle(color: Colors.white, fontSize: 30),
//                 ),
//                 padding: EdgeInsets.all(20),
//                 color: Colors.pink,
//                 alignment: Alignment.center,
//                 height: 400,
//               ),
//             ),

//             //block 2
//             Expanded(
//               child: Container(
//                 child: Text(
//                   "Second",
//                   style: TextStyle(color: Colors.white, fontSize: 30),
//                 ),
//                 padding: EdgeInsets.all(20),
//                 color: Colors.blue,
//                 alignment: Alignment.center,
//                 height: 700,
//               ),
//             ),
//           ],
//           // crossAxisAlignment: CrossAxisAlignment.stretch,
//           // mainAxisAlignment: MainAxisAlignment.spaceAround,
//           // textDirection: TextDirection.ltr,
//           // verticalDirection: VerticalDirection.down,
//         ),
//       ),
//     );
//   }
// }

//Row
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// void main() => {runApp(MyApp())};

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "MyAppIsReady",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("IAMAPPBAR",
//               style: TextStyle(fontSize: 30, color: Colors.blue)),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.only(top: 10.0),
//           child: Row(
//             children: [
//               Container(
//                 child: Text(
//                   "First",
//                   style: TextStyle(fontSize: 30),
//                 ),
//                 color: Colors.blue,
//                 height: 50,
//                 width: 40,
//               ),
//               Container(
//                 child: Text(
//                   "Second",
//                   style: TextStyle(fontSize: 30),
//                 ),
//                 color: Colors.blue,
//                 height: 50,
//                 width: 40,
//               ),
//               Container(
//                 child: Text(
//                   "Third",
//                   style: TextStyle(fontSize: 30),
//                 ),
//                 color: Colors.blue,
//                 height: 40,
//                 width: 50,
//               ),
//             ],
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             textDirection: TextDirection.ltr,
//           ),
//         ),
//       ),
//     );
//   }
// }

//Container
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "title",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("MyAppStarted!"),
//         ),
//         body: Center(
//           child: Container(
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Text(
//                 "MyTextToMani",
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.purple,
//                 ),
//               ),
//             ),
//             height: 300,
//             width: 200,
//             alignment: Alignment.center,
//             // color: Colors.red,
//             padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
//             decoration: BoxDecoration(
//               border: Border.symmetric(
//                 horizontal: BorderSide(
//                   width: 10,
//                   color: Colors.indigo,
//                   style: BorderStyle.solid,
//                 ),
//                 vertical: BorderSide(
//                   width: 30,
//                   color: Colors.purple,
//                   style: BorderStyle.solid,
//                 ),
//               ),
//               // borderRadius: BorderRadius.all(
//                 // Radius.circular(90),
//               ),
//             ),
//           ),
//         ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("mySampleApp"),
//         ),
//         body: Center(
//           child: Container(
//             child: Text(
//               "Aaryaveer",
//               style: TextStyle(fontSize: 30, color: Colors.white),
//             ),
//             // color: Colors.orange,
//             height: 200,
//             width: 200,
//             alignment: Alignment.center,
//             // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
//             // constraints: BoxConstraints(maxHeight: 200, maxWidth: 280),
//             // transform: Matrix4.skewX(3.0),

//             decoration: BoxDecoration(
//               color: Colors.purple,
//               border: Border.all(
//                 color: Colors.green, width: 5, style: BorderStyle.solid,
//                 // top: BorderSide(color:Colors.green, width: 5, style: BorderStyle.solid),
//                 // bottom: BorderSide(color:Colors.orange, width: 10, style: BorderStyle.solid),
//                 // left: BorderSide(color:Colors.redAccent, width: 3, style: BorderStyle.solid),
//                 // right: BorderSide(color:Colors.brown, width: 8, style: BorderStyle.solid),
//               ),
//               // borderRadius: BorderRadius.all(
//               //   Radius.circular(30),
//               // ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.orange,
//                   blurRadius: 3.0,
//                   spreadRadius: 7.0,
//                   // offset: Offset(10.0, 10.0),
//                 ),
//               ],
//               shape: BoxShape.rectangle,

//               gradient: LinearGradient(
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 colors: [Colors.green, Colors.red, Colors.blue, Colors.purple],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }