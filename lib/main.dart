import 'package:flutter/material.dart';
import 'login_page.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'first_screen.dart';
// import 'second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Map<int, Color> color = {
    50: Color.fromRGBO(136, 14, 79, .1),
    100: Color.fromRGBO(136, 14, 79, .2),
    200: Color.fromRGBO(136, 14, 79, .3),
    300: Color.fromRGBO(136, 14, 79, .4),
    400: Color.fromRGBO(136, 14, 79, .5),
    500: Color.fromRGBO(136, 14, 79, .6),
    600: Color.fromRGBO(136, 14, 79, .7),
    700: Color.fromRGBO(136, 14, 79, .8),
    800: Color.fromRGBO(136, 14, 79, .9),
    900: Color.fromRGBO(136, 14, 79, 1),
  };
  final Color selection = Colors.green;
  Widget build(BuildContext context) {
    MaterialColor colorCustom = MaterialColor(0xFF4DB6AC, color);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: colorCustom,
        // fontFamily: GoogleFonts.lato(fontStyle: FontStyle.italic),
      ),
      routes: {
        "/": (context) => LoginPage(),
      },
    );
  }
}
