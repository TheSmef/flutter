import '../../domain/entity/model_entity.dart';

class Model extends ModelEntity {
  late int id;
  late String name;
  late String description;
  late int id_marka;

  Model({required this.name,
   required this.description,
   required this.id_marka,}) 
   : super(name: name, description: description, id_marka: id_marka);


  Map<String, dynamic> toMap(){
    return {'name': name, 'description' : description, 'id_marka' : id_marka};
  }

  factory Model.toFromMap(Map<String, dynamic> json){
    return Model(name : json['name'],
     description: json['description'],
     id_marka: json['id_marka']);
  }
}