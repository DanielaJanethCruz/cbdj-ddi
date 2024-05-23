void main() {

  print(saludar());
  print(greetEveryone());
  print(agregarNum(5, 5));
  print(addTwoNumbers(5, 5)); 
  
  
  print(agregarDosNumOpc(4));
  print(agregarDosNumOpc2(4));
  
  print(greetPerson(nombre: 'Daniela', mensaje: 'Holiwiris'));
  print(greetPerson(nombre: 'Daniela'));
}

//-------------------------------------------------------------------------
//Funciones 
String saludar (){
  return "Hola a todos";
}
//Lambda
//Simplifican la sintaxis de las funciones
String greetEveryone()=> "Hello Everyone";
//-------------------------------------------------------------------------
//Funcion 2
//normal
int agregarNum(int a, int b){
  return a+b;
}
//lambda
//TO DO: convertir la funcion a lambda
int addTwoNumbers(int a, int b)=> a+b;


//-------------------------------------------------------------------------
//Variables Opcionales
//Poniendo [] rodeando la variable opcional la toma como tal inicialiando 
//en 0 la variable b
int agregarDosNumOpc(int a,[int b=0]){
   return a+b;
}
//Hacer lo anterior sin incializar la variable
int agregarDosNumOpc2(int a,[int? b]){
  //Validacion de que se ingrese b, conocisdo como operadorterneario
  //b= b ?? 0;
  b ??= 0;
   return a+b;
}

//-------------------------------------------------------------------------
//Variables por Referencia
//La palabra required se utiliza cuando queremos que sea un valor requerido
String greetPerson({required String nombre, String?  mensaje='Holas'}){
  return '$mensaje, $nombre';
}
