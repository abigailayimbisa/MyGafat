
import 'dart:async';

import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  double scale = 1.0;
  increment() {
    double scale = 1.0;
    Timer.periodic(Duration(seconds: 1), (timer) {
      scale = scale == 1.0 ? 1.1 : 1.0;
    });

    print(scale);
    notifyListeners();
  }
}



