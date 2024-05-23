//Future
//Soun un acuerdo de que en el futuro se tendrá un valor para ser usado

void main(){
  print('Inicio del Programa');
  httpGet("http;//").then((value){
    print(value);
  });
  print('Fin del Programa');
}

Future<String> httpGet(String url){
  //Esta linea especifica el tiempo que tardara en retornar la respuesta
  return Future.delayed(const Duration(seconds: 2),(){
    return 'Respuesta de la petición HTTP';
  });
}
