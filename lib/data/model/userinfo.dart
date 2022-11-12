import 'package:pr/domain/entity/userinfo_entity.dart';

class UserInfo extends UserInfoEntity{
  late int id;
  late String last_name;
  late String first_name;
  late String otch;

  UserInfo({required this.id,required this.last_name,
   required this.first_name,
   required this.otch}) : super(id: id, last_name: last_name, first_name: first_name, otch: otch);

  Map<String, dynamic> toMap(){
    return {'id': id, 'last_name' : last_name, 'first_name' : first_name, 'otch' : otch};
  }

  factory UserInfo.toFromMap(Map<String, dynamic> json){
    return UserInfo(id : json['id'],
     last_name: json['last_name'],
     first_name: json['first_name'],
     otch : json['otch']
     );
  }
}