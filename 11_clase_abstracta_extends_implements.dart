void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('Energía inicial: ${windPlant.type}');

  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
  nuclearPlant.consumeEnergy(50);
  print('Energia nuclear: ${nuclearPlant.energyLeft}');
}

// CLASE ABSTRACTA con sus 3 tipos de tipos
enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // porque jamás va a cambiar, final

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount) {
    throw UnimplementedError();
  }
}

// método  a parte de descarga
double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enought energy');
  }
  return plant.energyLeft - 10;
}

// EXTENDS (extiende todo el abstracto)
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// IMPLEMENTS (se puede implementar un método en particular)
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
