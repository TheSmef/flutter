import 'package:flutter/material.dart';

class FileEntity{
  late int id;
  late String name;
  late String extension;
  late String content;

  FileEntity({required this.name,
  required this.extension,
  required this.content});
}