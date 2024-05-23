void main(){
  
  //
  final Map<String, dynamic> rawJson ={
    'name' : 'Spiderman',
    'power' : 'Araña',
    'isAlive' : true
  };
  //Imprimir Spiderman
  final spiderman =  Hero.fromJson(rawJson);
  print(spiderman);
  
  //crear uno nuevo
  final other = Hero(power: 'none',name : 'other', isAlive: false);
  print(other);
}

class Hero {
  String name;
  String power;
  bool isAlive;
 
  Hero({required this.name, required this.power,required this.isAlive});
  Hero.fromJson(Map<String, dynamic> json)
    : name =json['name']??'No name found',
      power=json['power']??'No power found',
      isAlive=json['isAlive']??'No isAlive found';
  
  @override
  String toString(){
    return '$name, $power, isAlive: ${isAlive ? 'YES' : 'NO'}';
  }
}
