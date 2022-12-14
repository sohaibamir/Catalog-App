import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  String password = "";
  bool changedButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changedButton = true;
      });

      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedButton = false;
      });
    }
  }

  moveToSignup(BuildContext context) {
    Navigator.pushNamed(context, MyRoutes.signUpRoute);
  }

  Future verifyUser({required String name, required String password}) async {
    var collection = FirebaseFirestore.instance.collection('users');
    var querySnapshot = await collection.get();
    for (var queryDocumentSnapshot in querySnapshot.docs) {
      Map<String, dynamic> data = queryDocumentSnapshot.data();
      var naame = data['name'];
      var paassword = data['password'];
      if (name == naame && password == paassword) {
        moveToHome(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
      child: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            SizedBox(
              height: 50.0,
            ),
            Image.asset(
              "assets/images/wof.png",
              fit: BoxFit.cover,
              height: 200,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 30.0,
            ),
            // ignore: prefer_const_constructors
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: context.theme.primaryColor,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20.0,
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  children: [
                    TextFormField(
                        cursorColor: context.theme.primaryColor,
                        style: TextStyle(color: context.theme.primaryColor),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Username cannot be empty";
                          }
                        },
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: context.theme.primaryColor)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: context.theme.primaryColor)),
                            hintText: "Enter username",
                            labelText: "Username",
                            hintStyle: TextStyle(
                                color: context.theme.primaryColor,
                                fontWeight: FontWeight.w200),
                            labelStyle: TextStyle(
                                color: context.theme.shadowColor,
                                fontWeight: FontWeight.bold))),
                    TextFormField(
                        obscureText: true,
                        cursorColor: context.theme.primaryColor,
                        style: TextStyle(color: context.theme.primaryColor),
                        onChanged: (value) {
                          password = value;
                          setState(() {});
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6 characters";
                          }
                        },
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: context.theme.shadowColor)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: context.theme.primaryColor)),
                            hintText: "Enter password",
                            labelText: "Password",
                            hintStyle: TextStyle(
                                color: context.theme.primaryColor,
                                fontWeight: FontWeight.w200),
                            labelStyle: TextStyle(
                                color: context.theme.shadowColor,
                                fontWeight: FontWeight.bold))),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 40.0,
                    ),

                    Material(
                      color: MyTheme.royalBlue,
                      borderRadius:
                          BorderRadius.circular(changedButton ? 50 : 8),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(8),
                        splashColor: Colors.lightBlueAccent,
                        onTap: () => {
                          if (_formKey.currentState!.validate())
                            {verifyUser(name: name, password: password)},
                        },
                        child: AnimatedContainer(
                          width: changedButton ? 50 : 140,
                          height: 50,
                          duration: const Duration(seconds: 1),
                          alignment: Alignment.center,
                          child: changedButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(color: context.theme.primaryColor),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 2.0)),
                        InkWell(
                          onTap: () => {moveToSignup(context)},
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: MyTheme.royalBlue),
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
