import 'package:pr/domain/entity/filecar_entity.dart';

class FileCar extends FileCarEntity {
  late int id;
  late int id_car;
  late int id_photo;

  FileCar({
    required this.id_car, required this.id_photo }) 
    : super(id_car: id_car, id_photo: id_photo);


  Map<String, dynamic> toMap(){
    return {'id_car': id_car, 'id_photo' : id_photo};
  }

  factory FileCar.toFromMap(Map<String, dynamic> json){
    return FileCar(id_car : json['id_car'],
     id_photo: json['id_photo']);
  }
}