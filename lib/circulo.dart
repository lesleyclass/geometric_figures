import 'dart:math';
import 'figura.dart';

class Circulo extends Figura {
  int x;
  int y;
  double raio;

  Circulo(this.x, this.y, this.raio) : super(x, y);

  @override
  double area() => (pi * pow(raio, 2));

  double diametro() => (raio * 2);
}
