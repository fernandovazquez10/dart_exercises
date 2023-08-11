void main (){

  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 80);

  chargeCar(windPlant);
  chargeCar(nuclearPlant);

  print("wind: ${ windPlant.energyLeft }");
  print("nuclear: ${ nuclearPlant.energyLeft }");
}


double chargeCar( EnergyPlant plant){
  if (plant.energyLeft < 10){
    throw Exception('Not enough energy.');
  }
  return plant.energyLeft -= 10;
}

enum PlantType { nuclear, wind, water }


// Abstract classes can't be instantiated
abstract class EnergyPlant{
  double energyLeft;
  final PlantType type; // nuclear, wind, water.

  EnergyPlant ({
    required this.energyLeft, 
    required this.type
    });

  void consumeEnegery( double amount );

}


// extends -> Use inheritance
class WindPlant extends EnergyPlant {

  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnegery( double amount ){
    energyLeft -= amount;
  }
}


// implements -> Must redefine all 
class NuclearPlant implements EnergyPlant{

  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnegery(double amount) {
    energyLeft -= (amount * 0.5);

  }

}
