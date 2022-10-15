import 'package:pr/domain/entity/favorite_entity.dart';

class Favorite extends FavoriteEntity {
  late int id_car;
  late int id_user;
  late DateTime date;

  Favorite({
    required this.id_car, required this.id_user, required this.date
  }) : super(id_car: id_car, id_user: id_user, date: date);


  Map<String, dynamic> toMap(){
    return {'id_car': id_car, 'id_user' : id_user, 'date' : date};
  }

  factory Favorite.toFromMap(Map<String, dynamic> json){
    return Favorite(id_car : json['id_car'],
     id_user: json['id_user'],
     date: json['date']);
  }
}