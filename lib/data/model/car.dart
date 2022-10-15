import 'package:flutter/cupertino.dart';
import 'package:pr/domain/entity/car_entity.dart';

class Car extends CarEntity {
  late int id;
  late int id_model;
  late String name;
  late String description;
  late int mileage;

  Car({
    required this.id_model, required this.name, required this.description, required this.mileage
  }) : super(id_model: id_model, name: name, description: description, mileage: mileage);


  Map<String, dynamic> toMap(){
    return {'id_model': id_model, 'name' : name, 'description' : description, 'mileage' : mileage};
  }

  factory Car.toFromMap(Map<String, dynamic> json){
    return Car(id_model : json['id_model'],
     name: json['name'],
     description: json['description'],
     mileage : json['mileage']
     );
  }
}