import 'dart:math';

import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  List colors = [Colors.red, Colors.blue, Colors.black, Colors.yellow];
  Color? currentcolor;
  Random random = Random();

  void colorSelector() {
    currentcolor = colors[random.nextInt(colors.length)];
    notifyListeners();
  }
}
