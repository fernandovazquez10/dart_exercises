void main(){
  // maps are key value pairs 
  final Map<String, dynamic> pokemon = {
    'name': 'Pikachu',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['Thunder'],
    'sprites': {
      1: 'pikachu/front.png',
      2: 'pikachu/back.png',
    }
  };

  // Keys can be no strings

  final Map<int, String> pokemons ={
    1: "Pikachu",
    2: "Charizard",
    150: "Snorlax",
  };

  print(pokemon);
  print("Name: ${pokemon['name']}");
  print("Sprites: ${pokemon['sprites']}");
  print("Back: ${pokemon['sprites'][2]}");
  print("Front: ${pokemon['sprites'][1]}");

  print(pokemons);
}