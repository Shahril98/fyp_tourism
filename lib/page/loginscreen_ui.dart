// ignore: file_names
// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_renaming_method_parameters, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, deprecated_member_use, sized_box_for_whitespace, unused_field, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:home_interfaces/main.dart';
import 'package:home_interfaces/page/forgotpass_ui.dart';
import 'package:home_interfaces/page/searchplaces_ui.dart';
import 'sign_up.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRememberMe = false;
  //formkey
  final _formKey = GlobalKey<FormState>();
  //editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _auth = FirebaseAuth.instance;

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
            child: Stack(
          children: [
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2))
                  ]),
            ),
            TextFormField(
              autofocus: false,
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) {
                emailController.text = value!;
              },
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Please Enter Your Email");
                }
                //reg expression for email validation
                if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                    .hasMatch(value)) {
                  return ("Please Enter Valid Email");
                }
                return null;
              },
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  errorStyle: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 13,
                      fontWeight: FontWeight.normal),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                  )),
            ),
          ],
        ))
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
            child: Stack(
          children: [
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2))
                  ]),
            ),
            TextFormField(
              autofocus: false,
              controller: passwordController,
              onSaved: (value) {
                passwordController.text = value!;
              },
              textInputAction: TextInputAction.done,
              validator: (value) {
                RegExp regex = RegExp(r'^.{6,}$');
                if (value!.isEmpty) {
                  return ("Password is required for login");
                }

                if (!regex.hasMatch(value)) {
                  return ("Enter Valid Password (Min. 6 Characters)");
                }
              },
              obscureText: true,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  errorStyle: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 13,
                      fontWeight: FontWeight.normal),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                  )),
            ),
          ],
        ))
      ],
    );
  }

  Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () {
          print("Forgot Password Pressed");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ForgotPass()));
        },
        padding: EdgeInsets.only(right: 0),
        child: Text(
          'Forgot Password ?',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () {
          {
            signIn(emailController.text, passwordController.text);
          }
        },
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
        child: Text(
          'Login',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildSignUpBtn() {
    return GestureDetector(
      onTap: () {
        print("Sign Up Pressed");
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Signup()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Don\'t have an Account?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          TextSpan(
              text: '  Sign Up',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
                child: Stack(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        GradientColors.aqua[1],
                        GradientColors.malibuBeach[1],
                        GradientColors.malibuBeach[0],
                      ])),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 70,
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WelcomeUI()));
                              },
                              icon: Icon(Icons.arrow_back),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Image(
                                width: 180,
                                image: AssetImage('img/logo/logo.png')),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Center(
                              child: Text(
                                'SIGN-IN',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          buildEmail(),
                          SizedBox(height: 20),
                          buildPassword(),
                          buildForgotPassBtn(),
                          buildLoginBtn(),
                          SizedBox(height: 10),
                          buildSignUpBtn(),
                          Container(
                              padding: EdgeInsets.only(top: 30),
                              child: Column(
                                children: [
                                  Text(
                                    "Sabah Tourism",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  Text(
                                      "@2021 Sabah Tourism App. All Right Reserved",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontStyle: FontStyle.italic)),
                                  Padding(padding: EdgeInsets.only(top: 10)),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ))));
  }

//login function
  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Login Successful"),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => AppUI())),
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
