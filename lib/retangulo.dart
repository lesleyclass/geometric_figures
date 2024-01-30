import 'figura.dart';

class Retangulo extends Figura {
  int x;
  int y;
  double largura;
  double comprimento;

  Retangulo(this.x, this.y, this.largura, this.comprimento) : super(x, y);

  @override
  double area() => (largura * comprimento);

  bool isQuadrado() => (largura == comprimento);
}