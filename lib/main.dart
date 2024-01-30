import 'circulo.dart';
import 'figura.dart';

void main() {
  Circulo circle = Circulo(1, 1, 2);

  var list = [circle];
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
    default:
      print("Figura não identificada ");
  }
}