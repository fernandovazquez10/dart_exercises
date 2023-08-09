void main(){
  final String pokemon = "Pikachu";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['Thunder'];
  final sprites = <String>['pikachu/front.png', 'ditto/back.png'];

// dynamic allow any type 
// by defaul dynamic is null
  dynamic errorMessage = "Hola";
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = {1,2,3,4,5,6};
  errorMessage = null;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
""");
}