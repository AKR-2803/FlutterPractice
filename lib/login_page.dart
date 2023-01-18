import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'first_screen.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Login to Continue",
            style: TextStyle(
                fontSize: 22,
                // color: Colors.orange,
                // backgroundColor: Colors.blue,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(backgroundColor: Colors.pink),
                  onPressed: () => {print("Login Attempted")},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
