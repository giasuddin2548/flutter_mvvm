import 'package:flutter_mvvm/domain/entities/albums.dart';
import 'package:flutter_mvvm/domain/entities/photos.dart';
import 'package:flutter_mvvm/domain/entities/post.dart';
import 'package:flutter_mvvm/domain/repositories/api_repository.dart';

class ApiUseCase{
  final ApiRepository repo;
  ApiUseCase(this.repo);
  Future<List<Post>> getPosts() => repo.fetchPosts();
  Future<List<Album>> getAlbums() => repo.fetchAlbums();
  Future<List<Photo>> getPhotos() => repo.fetchPhotos();
}