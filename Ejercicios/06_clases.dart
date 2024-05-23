void main(){
  
  //1. Primera forma de instancia
  final Hero wolverine = new Hero(name: "wolverine",power: "Otro");
  //Con el metodo ToString se puede elegir que dato quiero que se muestre
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  
  //TO DO 
  //Generar otro superheroe sin poder y mostrar toda la información
  final Hero batman = new Hero (name:"Batmal");
  print(batman);
  print("Nombre: ${batman.name}");
  print("Poder: ${batman.power}");
}

//Clases 
class Hero{
  String name;
  String power;
  
  Hero({required this.name, this.power ='Sin Poder'});
  // Se crea el constructor de la Clase inicializando las variables
  //Hero(this.name, this.power);
  
  //Otra manera de inicializar
  //Hero(String pName, String pPower)
    //: name = pName,
    // power = pPower;
  
  // Se configura el metodo toString para sobreescribir el metodo original y el resultado final sea diferente, siempre lleva @override
  @override
  String toString(){
    return '$name -- $power';
  }
}
