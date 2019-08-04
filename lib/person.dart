import 'dart:ui';
import 'package:flutter_game/MyGame.dart';

class Person {
  final MyGame game;
  Rect personRect;
  Paint personPaint;

  Person(this.game, double x, double y) {
    personRect = Rect.fromLTWH(x, y, game.tileSize, game.tileSize);
    personPaint = Paint();
    personPaint.color = Color(0xff6ab04c);
  }

  void render(Canvas c) {
    c.drawRect(personRect, personPaint);
  }

  void update(double t) {}
}
