//Stateful Practice

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String yellowSentence = "I am Yellow"; //passing text in the container
  String pinkSentence = "I am Pink";
  bool isPink = true; //is the current colour pink

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyAppBar".toUpperCase()),
          backgroundColor: Colors.greenAccent.withOpacity(0.3),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 100.0,
                  width: 100.0,
                  color: isPink ? Colors.pinkAccent : Colors.yellowAccent,
                  child: isPink
                      ? Text(
                          pinkSentence, //sentence fetched from the global variable pinkSentence
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        )
                      : Text(
                          yellowSentence, //sentence fetched from the global variable yellowSentence
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        )),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isPink =
                        !isPink; //onPressing the btn, change the state to "not" Pink, i.e yellow
                  });
                },
                child: isPink
                    ? Text("Turn Yellow")
                    : Text(
                        "Turn Pink"), //render button text according to the condition
              ),
            ],
          ),
        ),
      ),
    );
  }
}
