void main (){
  print( greetEveryone() );
  print( arrowGreetEveryone() );
  print( 'Sum: ${addTwoNumbers(10, 20)}' );
  print( 'Sum: ${arrowAddTwoNumbers(10, 12)}' );
  print( 'Sum optional: ${addTwoNumbersOptional(10)}');
  print( 'Multiply optional: ${multiplyTwoNumbersOptional(10)}');
  print( greetPerson(name: "Fenando", message: "Hello!"));
}

String greetEveryone(){
  return "Hello everyone!";
}

String arrowGreetEveryone() => 'Hello everyone from arrow function' ;

int addTwoNumbers(int a, int b){
  return a + b ;
}

int arrowAddTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [ int? b ]){
  b = b ?? 0; // b ?? = 0; <- other way 
  return a + b;
}

int multiplyTwoNumbersOptional(int a, [ int b = 0]){
  return a * b;
}

// Function with optional args and defined by name not position 
String greetPerson({required String name, String message = "Hi!"}){
  return message + " " + name;
}
