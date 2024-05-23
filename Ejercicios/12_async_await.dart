//Future
//Soun un acuerdo de que en el futuro se tendrá un valor para ser usado

void main()async{
  //Se tiene que especificar el async para que el sistema pueda entender que toene que esperar un tiempo para póder imprimir el resultado
  print('Inicio del Programa');
  //Cuando po alguna razon no funcione el resultado mostrado sera incompleto, solo mostrara todo antes de la funcion y termibara el prograna cuanbdo se encuentre el error a menos que se especifique un try-catch
  final value = await  httpGet("http;//");
  print(value);
  print('Fin del Programa');
}
//Se especifica que es una funcion asincrona
Future<String> httpGet(String url)async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Respuesta de la petición HTTP';
}
