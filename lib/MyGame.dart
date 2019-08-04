import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';

class MyGame extends Game {
  Size screenSize;
  double tileSize;

  MyGame() {
    initialize();
  }

  void initialize() async {
    resize(await Flame.util.initialDimensions());
  }

  void render(Canvas canvas) {
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Color(0xff81ecec);
    canvas.drawRect(bgRect, bgPaint);
  }

  void update(double t) {}

  void resize(Size size) {
    screenSize = size;
    // for screens 16:9 or 16:x
    tileSize = screenSize.width / 16;
  }
}
