//Login Page created on 20-01-2023

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart'; //google fonts package
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; //fontawesome package
import 'package:hexcolor/hexcolor.dart'; //hexColor package

void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LoginPageApp",
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Scaffold(
        //uncomment to see AppBar
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
          child: Column(
            children: [
              Container(
                height: 300,
                padding: EdgeInsets.all(35),
                alignment: Alignment.center,
                color: Colors.deepPurple,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome Back!",
                      //custom fonts (using googlefonts package)
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text(
                      "Please Login to Continue",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
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
                              // color: Colors.deepPurpleAccent,
                            ),
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  decorationStyle: TextDecorationStyle.wavy),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 60,
                          width: 170,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurple,
                              // shadowColor: Colors.deepPurpleAccent,
                              // shape: CircleBorder(
                              //   side:
                              // )
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () => {print("Login Attempted!")},
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
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
                          style: TextStyle(fontWeight: FontWeight.w700),
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
                      //using fontAwesome package to display fontAwesomeIcons
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