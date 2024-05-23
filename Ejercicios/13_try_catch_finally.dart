//Future
//Soun un acuerdo de que en el futuro se tendrá un valor para ser usado

void main()async{
  //Se tiene que especificar el async para que el sistema pueda entender que toene que esperar un tiempo para póder imprimir el resultado
  print('Inicio del Programa');
  //Cuando po alguna razon no funcione el resultado mostrado sera incompleto, solo mostrara todo antes de la funcion y termibara el prograna cuanbdo se encuentre el error a menos que se especifique un try-catch
  try{
    final value = await  httpGet("http;//");
    print(value);
  }on Exception catch(err){
    print("Exception --> $err"); 
  }catch(err){
    print('Erro General: $err');
  }finally{
    print('Entra al bloque finally');
  }
  
  print('Fin del Programa');
}
//Se especifica que es una funcion asincrona
Future<String> httpGet(String url)async {
  await Future.delayed(const Duration(seconds: 2));
  throw Exception('No hay parametros en la URL');
  //throw 'Error de la Petición';
  //return 'Respuesta de la petición HTTP';
}
