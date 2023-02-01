//Login Page created on 20-01-2023
//abcdefghikjklmnioppqtrstuvwxuyzz
//avabcdefghijklmnopqtrstuvwxuyz
//avabcdefghoijklmnopqrstucvwxyz
//avabcddefghijkllmnopqtrstuvwxyz
//avabcdrefghijklmnopqrstucvwxyz
//abccdefghijklmnopqrstuvwxuuyz
//abcdefghijklmnolpqrdsrtuvwxyz
//abcdfdefghikjklmnopqrstuvwxyz
//abcdefghijklmnopqrstuvwxyz
//abcdefghijklmnopqrstuvwxzyz
//abcdefghijklmnopqrstuvwxzyz
//abcdefghijklmnopqrstuvwxyz
//abcdefghjijklmnopqurstuvwxyz
//abcdefghijklm,mnopqrstuxvwxyz
//abcdefghijklmnopqrstucwvwsxyaz
//abcdefghijklmnopqrstucvwxy;az
//abcdefghijklmnopqrst uvwxyz

//C:\21.2  D:\590

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:practice_one/widgets/item_widget.dart';
import 'package:flutter/services.dart';
import 'models/catalog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    // We cant diretly load the object from JSON file in the object format
    //Hence we need to convert it to string and then again convert it back to object format
    /*
    ///be aware that the value of [catalogJSON] is of type "Future" hence it has to be used inside an async await function in order to wait for the future value to be loaded, otherwise this error will occur : 
  
    The argument type 'Future<String>' can't be assigned to the parameter type 'String'.
    */
    var catalogJson = await rootBundle.loadString('assets/files/catalog.json');
    // print(catalogJson);
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];

    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text(
            "CatalogApp",
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
          )),
          body: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              ? ListView.builder(
                  itemCount: CatalogModel.items.length,
                  itemBuilder: (context, index) {
                    return ItemWidget(CatalogModel.items[index]);
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
    );
  }
}

/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ChangeUI"),
          backgroundColor: Colors.red,
        ),
        body: FirstScreen(),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen()),
          );
        },
        child: Text("Navigate Now"),
      ),
    ));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome to second page!"),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Go Back"),
          ),
        ],
      ))),
    );
  }
}

*/

// import 'package:flutter/services.dart';
/*
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var result = "";
  var no1Controller = new TextEditingController();
  var no2Controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  maxLength: 10,
                  //  obscureText: true,
                  cursorColor: Colors.deepPurple[500],
                  cursorWidth: 3,
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                  decoration: InputDecoration(
                    hintText: "Number - 1",
                    filled: true,
                    fillColor: Colors.deepOrange[50],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: no2Controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Number - 2",
                    filled: true,
                    fillColor: Colors.deepOrange[50],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var ans = no1 + no2;

                        result = "Sum of $no1 and $no2 is $ans.";
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        "Add",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Questrial'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var ans = no1 - no2;

                        result = "Sum of $no1 and $no2 is $ans.";
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        "Subtract",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Questrial'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Text(
                  result,
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: Colors.yellow[900]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


*/

/*


void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    home: MyHomeScreen(),
  ));
}


class MyHomeScreen extends StatelessWidget {


  // final currentTime =
  //     DateFormat('hm').format(DateTime.now()); //hour:minute format
  final currentHour = DateTime.now().hour;
  final currentMinute = DateTime.now().minute;
  final currentWeekday = DateFormat('E').format(DateTime.now());
  final currentDay = DateFormat('d').format(DateTime.now());
  final currentMonth = DateFormat('MMMM').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
//       appBar: AppBar(title: Text("Hello")),
//     );
//   }
// }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Container(
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$currentHour:$currentMinute",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 70),
                          ),
                          Text(
                            "$currentWeekday, $currentDay $currentMonth",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 150),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.red[400],
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.redAccent, width: 2.5)),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white, letterSpacing: 2.5),
                    ),
                  ),
                ),  
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.black),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.black),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.black),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


*/
