import 'dart:io';

class Imc {
  final double altura;
  final double peso;
  Imc(this.altura, this.peso);

  double calcImc() {
    return peso / (altura * altura);
  }
}

void main(List<String> arguments) {
  print('Qual seu nome?');
  String? nome = stdin.readLineSync();

  print('Qual sua idade?');
  String? idade = stdin.readLineSync();

  print('Qual sua altura?');
  String? altura = stdin.readLineSync();

  print('Qual seu peso?');
  String? peso = stdin.readLineSync();

  Imc imc = Imc(double.parse(altura!), double.parse(peso!));

  print('$nome de $idade anos, seu imc é: ${imc.calcImc()}');
}
