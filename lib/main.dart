//avbcdefghilkjklmnolpqrstuvwxyz
//abcdefghijlkklmnopsqrstluvwxyz

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeRoute(),
  ));
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
          child: Text("Go to SecondRoute"),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key key}) : super(key: key);
  // const SecondRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Go to Home"),
        ),
      ),
    );
  }
}
