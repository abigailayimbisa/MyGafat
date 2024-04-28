import 'package:flutter/material.dart';
import 'package:gafat/desktop_pages/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 500,
            ),
            child: Container(
              // decoration: BoxDecoration(
              //   color: Colors.grey.shade300,
              //   borderRadius: BorderRadius.circular(20),
              // ),
              height: 300,
              width: 600,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Forgot password?",
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
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Reset Password"),
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



