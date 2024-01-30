import 'triangulo.dart';
import 'retangulo.dart';
import 'circulo.dart';
import 'figura.dart';

void main() {
  Circulo circle = Circulo(1, 1, 2);
  Retangulo quadrado = Retangulo(2, 2, 2, 2);
  Retangulo retangulo = Retangulo(3, 3, 2, 4);
  Triangulo triangulo = Triangulo(4, 4, 2, 5, 4);

  var list = [circle, quadrado, retangulo, triangulo];
  double areaTotal = 0.0;
  for (var figure in list){
    areaTotal += figure.area();
    trataFigura(figure);
  }
  print("Area total dos objetos: $areaTotal");
}

void trataFigura(Figura figura) {
  switch (figura.runtimeType) {
    case Circulo:
      var diametro = (figura as Circulo).diametro();
      print("Criado Circulo em X=${figura.x} Y=${figura.y}");
      print("Area: ${figura.area()}");
      print("Diametro: $diametro\n");
      break;
    case Retangulo:
      var isQuadrado = (figura as Retangulo).isQuadrado();
      print("Criado Retangulo em X=${figura.x} Y=${figura.y}");
      print("Area: ${figura.area()}");
      if (isQuadrado) {
        print("Eh um quadrado!\n");
      } else {
        print("Não eh um quadrado!\n");
      }
      break;
    case Triangulo:
      print("Criado Triangulo em X=${figura.x} Y=${figura.y}");
      print("Area: ${figura.area()}");
      (figura as Triangulo).getTipo();
      break;
    default:
      print("Figura não identificada ");
  }
}