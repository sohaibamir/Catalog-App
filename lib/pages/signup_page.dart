import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import '../utils/routes.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String email = "";
  String name = "";
  String password = "";
  final _formKey = GlobalKey<FormState>();

  moveToLogin(BuildContext context) {
    Navigator.pushNamed(context, MyRoutes.loginRoute);
  }

  Future createUser(
      {required String email,
      required String name,
      required String password}) async {
    // Reference to document
    final docUser = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {
      return docUser.add({'email': email, 'name': name, 'password': password});
    }

    addUser();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/register.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15, top: 142),
              child: const Text(
                "Welcome to \n Sign Up",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.45,
                        right: 20,
                        left: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: Colors.black,
                          style: const TextStyle(color: Colors.black),
                          onChanged: (value) {
                            email = value;
                            setState(() {});
                          },
                          validator: (value) {
                            if (!(RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value.toString())) ||
                                value == null) {
                              return "Enter Correct Email";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(10, 20, 10, 10),
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              hintText: 'Enter Email',
                              labelText: "Email",
                              labelStyle: TextStyle(color: MyTheme.royalBlue),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: MyTheme.royalBlue)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(height: 15.0),
                        TextFormField(
                          cursorColor: Colors.black,
                          style: const TextStyle(color: Colors.black),
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Username cannot be empty";
                            } else if (value.length < 3) {
                              return "Username length should be atleast 3 characters";
                            }
                          },
                          decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(10, 20, 10, 10),
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              hintText: "Enter Username",
                              labelText: "Username",
                              labelStyle: TextStyle(color: MyTheme.royalBlue),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: MyTheme.royalBlue)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(height: 15.0),
                        TextFormField(
                          cursorColor: Colors.black,
                          style: const TextStyle(color: Colors.black),
                          obscureText: true,
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
                              contentPadding:
                                  const EdgeInsets.fromLTRB(10, 20, 10, 10),
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              hintText: "Enter Password",
                              labelText: "Password",
                              labelStyle: TextStyle(
                                color: MyTheme.royalBlue,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: MyTheme.royalBlue)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Material(
                          color: Colors.blueGrey.shade800,
                          borderRadius: BorderRadius.circular(15),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(15),
                            splashColor: Colors.lightBlueAccent,
                            onTap: () async => {
                              if (_formKey.currentState!.validate())
                                {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text("Registering..")),
                                  ),
                                  await Future.delayed(
                                      const Duration(seconds: 1)),
                                  moveToLogin(context),
                                  createUser(
                                      email: email,
                                      name: name,
                                      password: password)
                                }
                            },
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: const Text(
                                "Sign up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 35.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account? ",
                              style: TextStyle(color: Colors.black),
                            ),
                            const Padding(padding: EdgeInsets.only(left: 2.0)),
                            InkWell(
                              onTap: () => {
                                moveToLogin(context),
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blueGrey.shade800),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
