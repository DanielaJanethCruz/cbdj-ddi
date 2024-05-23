//Clases abstractas
//Esta representa el cascron de una estructura, se puede extender e implementar. Una clase abstracta no se  puede instanciar a si misma, es un molde para crear otro molde. Se pueden generar funciones sin implementación
void main() {
  
  final plantaviento = PlantaAire(energiaInicial: 100);
  final plantaNuclear = PlantaNuclear(cantidadEnergia: 9);
  
  print('Viento; ${cargaBateria(plantaviento)}');
  print('Viento; ${cargaBateria(plantaNuclear)}');
}

// Método para la carga de baterias con las diferentes plantas
 double cargaBateria(PlantaEnergia planta){
    if(planta.cantidadEnergia < 10){
      throw Exception('Sin Energia Suficiente');
    }
    return planta.cantidadEnergia - 10;
  }

//En las listas enumeradas se especifica los tios que espero recibir
enum TipoPlanta{
  viento,
  agua,
  nuclear
}

//Siempre lleva abstract
abstract class PlantaEnergia{
  
  double cantidadEnergia;
  final TipoPlanta tipo;   //REcibe los valores especificados en el enum
  
  //Contructor
  PlantaEnergia({
    required this.cantidadEnergia,
    required this.tipo
  });
  
  //Cuando se implemente la clase se debera especificar este metodo, sobreescribiendolo para adaptarlo a las necesidadesdel contexto.
  void consumirEnergia(double cantidad);
}


//__________________________________________________________________________________________________________________________________________________________________________
//  EXTENDS: extender o heredar de una clase, hereda todos los atributos de la clase extendida

class PlantaAire extends PlantaEnergia{
  PlantaAire({ required double energiaInicial})
    //Super hace referencia al constructor d la clase padre
    : super(cantidadEnergia: energiaInicial, tipo: TipoPlanta.viento); 
  
  //sobreescribe el metodo de la clase padre para adaptarla a las necesidades de la clase nueva
  @override
  void consumirEnergia(double cantidad){
    cantidadEnergia-=cantidad;
  }
}
//__________________________________________________________________________________________________________________________________________________________________________
//  IMPLEMENTS: implementa los atributos, clases o metodos especificados en la clase abstracta y agrega los propios metodos para sobreescribir la clase y adapatarla

class PlantaNuclear implements PlantaEnergia{
  
  @override
  double cantidadEnergia;
  @override
  final TipoPlanta tipo = TipoPlanta.nuclear;
  
  PlantaNuclear({required double this.cantidadEnergia});
  
  @override
  void consumirEnergia(double cantidad){
     cantidadEnergia-=cantidad;
  }
}
