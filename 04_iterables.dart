void main(){
  final numbers = [1,2,3,4,4,4,2,4,5,2,5];

  print('List original: ${numbers}');
  print('List original lenght: ${numbers.length}');
  print('Index 0 ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print("Iterable: $reversedNumbers");
  print("List: ${reversedNumbers.toList()}");
  print("Set: ${reversedNumbers.toSet()}");


  // List has a method called where that help to find specific data
  final numbersGreaterThan5 = numbers.where((num){
    return num > 3;
  });
  print("Numbers greater than 5: $numbersGreaterThan5");
  print("Numbers greater than 5 Set: ${numbersGreaterThan5.toSet()}");
}