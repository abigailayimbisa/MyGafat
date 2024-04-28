
import 'package:flutter/material.dart';
import 'package:gafat/desktop_pages/forgot.dart';
import 'package:gafat/desktop_pages/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 500,
          ),
          child: Container(
            // decoration: BoxDecoration(
            //   color: Colors.red,
            //   borderRadius: BorderRadius.circular(20),
            // ),
            height: 400,
            width: 600,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login ",
                      style: GoogleFonts.abel(fontSize: 30, color: Colors.black),
                    ),
                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "Enter your email" ,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),

                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter your password" ,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),

                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Close the AlertDialog
                          Navigator.of(context).pop();
                        },
                        child: Text("Login"),
                      ),
                    ),

                    Center(
                      child: TextButton(
                        onPressed: () {
                          // Close the current AlertDialog and open the Signup dialog
                          Navigator.of(context).pop();
                          _showSignupDialog(context);
                        },
                        child: Text(
                          "Do not have an account? Signup here",
                          style: TextStyle(color: Colors.blue[900]),
                        ),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        // Close the current AlertDialog and open the Forgot Password dialog
                        Navigator.of(context).pop();
                        _showforgotDialog(context);
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.blue[900]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void _showSignupDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.transparent,
        content: SingleChildScrollView(
          child: SizedBox(
            height: 700,
            width: 600,
            child: Sign_up(),
          ),
        ),
      );
    },
  );
}

void _showforgotDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.transparent,
        content: SingleChildScrollView(
          child: SizedBox(
            height: 300,
            width: 600,
            child: Forgot(),
          ),
        ),
      );
    },
  );
}
