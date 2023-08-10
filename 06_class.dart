void main() {
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneration');
  print( wolverine );
  print( wolverine.name );
  print( wolverine.power );

  final SuperHero ironMan = SuperHero(name: "Tony Stark", power: "Rich", isAlive: false);
  print( ironMan  );

  final Map<String, dynamic> rawJson = {
    'name': 'Steve Rogers',
    'power': 'Super soldier',
    'isAlive': true,
  };

  final SuperHero newSuperHero = SuperHero.fromJson( rawJson );
  print(newSuperHero);

}


class Hero {

  String name;
  String power;

  Hero({
    required this.name, 
    this.power = "Without power"
    });

  // Hero( String pName, String pPower )   // <- Other way to initialize 
  // : name = pName,
  //   power = pPower;

  @override 
  String toString() {
    return "$name - $power";
  }

}


class SuperHero{
  String name;
  String power;
  bool isAlive;

  SuperHero({
    required this.name,
    required this.power,
    required this.isAlive,
  });

  SuperHero.fromJson(Map<String, dynamic> json)
  : name = json['name'] ?? 'No name found',
    power = json['power'] ?? 'No power found',
    isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return "$name, $power, is alive: ${ isAlive ? 'Yes!': 'Nope'}";
  }

}

