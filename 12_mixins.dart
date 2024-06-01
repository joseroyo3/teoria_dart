// https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
// antiguamente era abstract class
abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Estoy volando');
}
mixin Caminante {
  void caminar() => print('Estoy caminando');
}
mixin Nadador {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Volador, Caminante, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Volador, Nadador {}

void main() {
  final flipper = Delfin();
  print('Delfin:');
  flipper.nadar();

  final batman = Murcielago();
  print('\nBatman:');
  batman.caminar();
  batman.volar();

  final patodemipato = Pato();
  print('\nPato de mi pato:');
  patodemipato.caminar();
  patodemipato.nadar();
  patodemipato.volar();
}
