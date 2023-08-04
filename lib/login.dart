import 'package:flutter/material.dart';
import 'package:productdes/new.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showPassword = false;
  var emailcontrollel = TextEditingController();
  var passcontroler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      GestureDetector(child: Icon(Icons.arrow_back)),
                      // Icon(Icons.arrow_back),
                      // SizedBox(
                      //   width: 20,

                      // ),
                      Text(
                        "Create New Password",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/login.png"),
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Create Your Password"),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: emailcontrollel,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passcontroler,
                  obscureText: showPassword == true ? false : true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (showPassword == true) {
                                showPassword = false;
                              } else {
                                showPassword = true;
                              }
                            });
                          },
                          child: Icon(Icons.remove_red_eye)),
                      labelText: "Password",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [Text("Remember Me")],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  child: Center(
                      child: GestureDetector(
                          onTap: () {
                            if (emailcontrollel.text.isEmpty ||
                                passcontroler.text.isEmpty) {
                            } else {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Product();
                              }));
                            }
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
