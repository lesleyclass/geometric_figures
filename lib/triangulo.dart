import 'dart:math';
import 'figura.dart';

class Triangulo extends Figura {
  int x;
  int y;
  double face1;
  double face2;
  double face3;

  Triangulo(this.x, this.y, this.face1, this.face2, this.face3) : super(x, y);

  @override
  double area() {
    var semiPerimeter = (face1 + face2 + face3) / 2.0;
    var area = sqrt(
        semiPerimeter * (semiPerimeter - face1) * (semiPerimeter - face2) *
            (semiPerimeter - face3));

    return area;
  }

  void getTipo() {
    if (face1 == face2 && face1 == face3) {
      print("Triangulo equilatero\n");
    } else if (face1 == face2 && face1 != face3) {
      print("Triangulo isosceles\n");
    } else if (face1 != face2 && face1 != face3 && face2 != face3) {
      print("Triangulo escaleno\n");
    } else {
      print("Triangulo não classificavel\n");
    }
  }
}