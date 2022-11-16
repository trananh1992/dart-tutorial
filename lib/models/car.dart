import 'package:dart_tutorial/models/vehicle.dart';

class Car extends Vehicle {
  double enginerSize = 0.0;
  double horsePower = 0.0;

  Car(String name, int year, this.enginerSize, this.horsePower): super(name, year);

  //getter /setter
  int get age => DateTime.now().year - year;
  set age(int value){
    year = DateTime.now().year - value;
  }

  @override
  String toString() =>
    '${super.toString()}, enginerSize: $enginerSize, horsePower: $horsePower';
}