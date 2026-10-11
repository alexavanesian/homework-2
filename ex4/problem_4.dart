abstract class Vehicle {
  double fuelConsumption();
}

class Car extends Vehicle {
  final double litersPer100Km;

  Car(this.litersPer100Km);

  @override
  double fuelConsumption() => litersPer100Km;
}

class Motorcycle extends Vehicle {
  final double litersPer100Km;

  Motorcycle(this.litersPer100Km);

  @override
  double fuelConsumption() => litersPer100Km;
}

double totalConsumption(List<Vehicle> vehicles, double distance) {
  double total = 0.0;
  for (final vehicle in vehicles) {
    total += vehicle.fuelConsumption() * distance / 100;
  }
  return total;
}

void main() {
  final vehicles = <Vehicle>[
    Car(8.5),
    Car(6.0),
    Motorcycle(3.5),
  ];

  final distance = 250.0;
  final total = totalConsumption(vehicles, distance);
  print('Total fuel consumption for $distance km: $total liters');
}
