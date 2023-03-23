import 'package:flutter/material.dart';
import 'package:untitled/signup.dart';

class LoginScreen extends StatefulWidget{

  //final Color primaryColor;
  final Color secondaryColor;
  final Color logoGreen;

  /*this.primaryColor = const Color(0xFF990000),*/
  LoginScreen({
    this.secondaryColor = const Color(0xFFB5E6EE),
    this.logoGreen = const Color(0xFF0000FF),
  });
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState  extends State<LoginScreen>{
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  FocusNode? myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: widget.primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(color: widget.secondaryColor, border: Border.all(color: Colors.blue)),
                child: TextFormField(
                  controller: _emailController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.black),
                    icon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => myFocusNode?.requestFocus(),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(color: widget.secondaryColor, border: Border.all(color: Colors.blue)),
                child: TextFormField(
                  focusNode: myFocusNode,
                  controller: _passwordController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black),
                    icon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 30),
              MaterialButton(
                elevation: 0,
                minWidth: double.maxFinite,
                height: 50,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                },
                color: widget.logoGreen,
                child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 16)),
                textColor: Colors.white,
              ),
              SizedBox(height: 20),
              MaterialButton(
                elevation: 0,
                minWidth: double.maxFinite,
                height: 50,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                },
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Sign In using Google', style: TextStyle(color: Colors.white, fontSize: 16)),
                  ],
                ),
                textColor: Colors.white,
              ),
              SizedBox(height: 100),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Text('Sign Up?', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}