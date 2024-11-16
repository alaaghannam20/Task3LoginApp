// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyappState();
  }
}

class MyappState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailText = new TextEditingController();
    TextEditingController Password = new TextEditingController();

    String MyEmail = "tariq@gmail.com";
    String MytPassword = "112233";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text(
              "Login Page",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailText,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    hintText: "Your Email",
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: Password,
                  decoration: InputDecoration(
                    labelText: "password",
                    border: OutlineInputBorder(),
                    hintText: "Your password",
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (emailText.text == MyEmail &&
                          Password.text == MytPassword) {
                        print("Welcom");
                      } else {
                        print("Error Email Or Password");
                      }
                    });
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
