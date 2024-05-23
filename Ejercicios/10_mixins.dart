//Mixins en Dart
//Asigna a cada una de las clases una accion especifica que cda auna puede usar
void main() {
  //
  final delfin = Delfin();
  delfin.nadar;
  final pato = Pato();
  pato.caminar;
  pato.nadar;
  pato.volar;
}

//Declaracion de las clases abstractas
abstract class Animal {}
abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

//Para hacer las propiedades se usa mixin
mixin Volador {
  void volar() => print('Este animal vuela');
}
mixin Caminante {
  void caminar() => print('Este animal camina');
}
mixin Nadador {
  void nadar() => print('Este animal nada');
}

//Definició de las clases de animal

class Delfin extends Mamifero with Nadador {}
class Mulcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Volador, Nadador, Caminante {}

class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}
