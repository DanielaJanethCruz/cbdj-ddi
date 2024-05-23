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

Stream<int> emitNumbers() async*{
  
  final valuesToEmit= [1,2,3,4,5];
  
  for (int i in valuesToEmit){
    await Future.delayed(const Duration(seconds:1));
    //El yield funje como el return
    yield i;
  }
}
