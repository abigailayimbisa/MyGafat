import 'package:flutter/material.dart';

class Responsive_layout extends StatelessWidget {
  final Widget mobile_body;
  final Widget tablet_body;
  final Widget desktop_body;

  const Responsive_layout({super.key, required this.mobile_body,required this.tablet_body, required this.desktop_body});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      double size = constraints.maxWidth;

      if(size < 600)
      {
        return mobile_body;

      }
      else if (size>600 && size<1000)
      {
        return tablet_body;
      }

      else
      {
        return desktop_body;
      }

    });
  }
}
