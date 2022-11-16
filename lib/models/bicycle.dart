import 'package:dart_tutorial/models/vehicle.dart';

class Bicycle extends Vehicle {
  bool hasBasket;

  Bicycle({required String name, required int year, required this.hasBasket}): super(name, year);

  bool equal(Object other) => identical(this, other) || (other is Bicycle && name == other.name && year == other.year && hasBasket == other.hasBasket);

  Bicycle copyWith({String? name, int? year, bool? hasBasket}) => Bicycle(
    name: name?? this.name,
    year: year?? this.year,
    hasBasket: hasBasket ?? this.hasBasket
  );

  @override
  bool operator == (Object other) => identical(this, other) || (other is Bicycle && name == other.name && year == other.year && hasBasket == other.hasBasket);
}