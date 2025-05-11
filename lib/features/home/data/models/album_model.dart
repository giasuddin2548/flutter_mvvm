

import '../../domain/entities/albums.dart';

class AlbumModel extends Album {
  AlbumModel({required super.id, required super.title});

  factory AlbumModel.fromJson(Map<String, dynamic> json) {
    return AlbumModel(id: json['id'], title: json['title']);
  }
}
