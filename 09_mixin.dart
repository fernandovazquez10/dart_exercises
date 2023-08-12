abstract class Animal {}

abstract class Mammal extends Animal {}
abstract class Bird extends Animal {}
abstract class Fish extends Animal {}

// before dart 3 used to be declared as abstract class instead of mixin
mixin Flyer {
  void fly() => print("I'm flying.");
}

mixin Walker {
  void walk() => print("I'm walking.");
}

mixin Swimmer {
  void swimm() => print("I'm swimming.");
}


// If mixin class is not declared with mixin keyword just change with for implements
class Dolphin extends Mammal with Swimmer {}
class Bat extends Mammal with Flyer, Walker {}
class Cat extends Mammal with Walker {}


class Dove extends Bird with Flyer, Walker{}
class Duck extends Bird with Flyer, Walker, Swimmer{}

class Shark extends Fish with Swimmer{}
class FlyingFish extends Fish with Flyer, Swimmer {}

void main(){
  final flipper = Dolphin();
  print("------- Flipper -------");
  flipper.swimm();

  print("------- Batman -------");
  final batman = Bat();
  batman.fly();
  batman.walk();

  print("------- Donald -------");
  final donald = Duck();
  donald.fly();
  donald.swimm();
  donald.walk();
}

