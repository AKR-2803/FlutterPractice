//afbcdefghijkkl,mnopsqrsatuvwxu;yz
//abcdefghikljkl
import 'package:flutter/material.dart';
import 'package:practice_one_register/widgets/drawer.dart';

void main() {
  runApp(MaterialApp(
    home: RegisterPage(),
  ));
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // uncomment to see App Bar
      appBar: AppBar(
        title: Text(
          "Register Here!",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.all(10.0),
              height: 50.0,
              width: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.brown,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Register".toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              height: 500,
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "FIRST NAME",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 3,
                              color: Colors.deepOrangeAccent,
                              style: BorderStyle.solid),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "LAST NAME",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 3,
                              color: Colors.deepOrangeAccent,
                              style: BorderStyle.solid),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 3,
                              color: Colors.deepOrangeAccent,
                              style: BorderStyle.solid),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 3,
                              color: Colors.deepOrangeAccent,
                              style: BorderStyle.solid),
                        ),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        enabledBorder: UnderlineInputBorder(
                          // borderRadius: BorderRadius.circular(10)
                          borderSide: BorderSide(
                              width: 3,
                              color: Colors.deepOrangeAccent,
                              style: BorderStyle.solid),
                        ),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 3,
                              color: Colors.deepOrangeAccent,
                              style: BorderStyle.solid),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0, top: 25.0),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Back To Login"),
                    // textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
              width: 130.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: BorderSide(width: 3, color: Colors.black12),
                  primary: Colors.deepPurpleAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  // isTapped = false;
                  Navigator.pop(context);
                },
                child: Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
