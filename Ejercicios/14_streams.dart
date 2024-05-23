//Streams 
//Son flujos de informacion que pueden estar emitiendo 
//valores periodicamente pude ser una vez o nunca.

//Son como flujos de agua (el flujo es e stream)
//puede cerrar o abrirse

void main(){
  //Se tiene que tener escuchando el Stream para que pueda estar ejecutando su contenido
  emitNumbers().listen((value){
    print('emit: $value');
  });
}

Stream<int> emitNumbers(){
  //cada segundo se emite un valor 
  return Stream.periodic(const Duration(seconds:1),(value){
    return value;
    //Se especifica que tiene que tomar solo 5 valores 
  }).take(5);
}
