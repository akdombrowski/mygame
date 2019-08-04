import 'dart:ui';
import 'package:flutter_game/MyGame.dart';

class Person {
  final MyGame game;
  Rect personRect;

Person(this.game, double x, double y) {
  personRect = Rect.fromLTWH(x, y, game.tileSize, game.tileSize);
}

  void render(Canvas c) {}

  void update(double t) {}
}
