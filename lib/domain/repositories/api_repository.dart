import 'package:flutter_mvvm/domain/entities/albums.dart';
import 'package:flutter_mvvm/domain/entities/photos.dart';
import 'package:flutter_mvvm/domain/entities/post.dart';

abstract class ApiRepository {
  Future<List<Post>> fetchPosts();
  Future<List<Album>> fetchAlbums();
  Future<List<Photo>> fetchPhotos();
}