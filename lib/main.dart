
import 'package:flutter/material.dart';
import 'package:gafat/controllers/controller.dart';
import 'package:gafat/responsiveness/desktop.dart';
import 'package:gafat/responsiveness/mobile.dart';
import 'package:gafat/responsiveness/responsive_layout.dart';
import 'package:gafat/responsiveness/tablet.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Gafat());
}

class Gafat extends StatefulWidget {
  const Gafat({super.key});

  @override
  State<Gafat> createState() => _GafatState();
}

class _GafatState extends State<Gafat> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => AppController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Responsive_layout(mobile_body: Mobile(),tablet_body: Tablet(),desktop_body: Desktop(),),
      ),
    );
    // return Container(
    //   child:Home(),
    // );

  }
}
