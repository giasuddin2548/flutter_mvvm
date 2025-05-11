
import '../../domain/entities/photos.dart';

class PhotoModel extends Photo {
  PhotoModel({required super.id, required super.title, required super.url});

  factory PhotoModel.fromJson(Map<String, dynamic> json) {
    return PhotoModel(
      id: json['id'],
      title: json['title'],
      url: json['url'],
    );
  }
}