import 'package:pr/domain/entity/file_entity.dart';

class File extends FileEntity {
  late int id;
  late String name;
  late String extension;
  late String content;

  File({
    required this.name, required this.extension, required this.content
  }) : super(name: name, extension: extension, content: content);


  Map<String, dynamic> toMap(){
    return {'name': name, 'extension' : extension, 'content' : content};
  }

  factory File.toFromMap(Map<String, dynamic> json){
    return File(name : json['name'],
     extension: json['extension'],
     content: json['content']);
  }
}