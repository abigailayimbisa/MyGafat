import 'dart:async';

import 'package:flutter/material.dart';


// AnimatedPhoneImage widget definition
class AnimatedPhoneImage extends StatefulWidget {
  @override
  _AnimatedPhoneImageState createState() => _AnimatedPhoneImageState();
}

class _AnimatedPhoneImageState extends State<AnimatedPhoneImage> {
  double _scale = 1.0;

  @override
  void initState() {
    super.initState();
    // Start the animation when the widget is initialized
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _scale = _scale == 1.0 ? 1.1 : 1.0; // Scale up and down every 1 second
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 500), // Adjust animation duration as needed
        transform: Matrix4.identity()..scale(_scale),
        child: Image.asset("assets/images/phone1.png"), // Replace with your image path
        );
    }
}