import 'dart:async';

import 'package:flutter/cupertino.dart';

class PlayerProvider with ChangeNotifier {
  static double playerX = 0;
  double rocketX = playerX;
  double rockety = 1;
  double rocketHeight = 1;

  void moveLeft() {
    if (playerX - 0.1 < -1) {
    } else {
      playerX -= 0.1;
      rocketX = playerX;
    }
    notifyListeners();
  }

  void moveRigth() {
    if (playerX + 0.1 > 1) {
    } else {
      playerX += 0.1;
      rocketX = playerX;
    }
    notifyListeners();
  }

  void fireRocket(context) {
    Timer.periodic(
      const Duration(milliseconds: 20),
      (timer) {
if (rocketHeight>MediaQuery.of(context).size.height*3/4) {
  resetRocket();
  timer.cancel();
} else {
  rocketHeight+=10;
  notifyListeners();
}
      },
    );
  }
  void resetRocket(){
    rocketX=playerX;
    rocketHeight=10;
  }
}
