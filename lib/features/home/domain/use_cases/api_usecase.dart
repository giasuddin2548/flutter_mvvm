
import '../entities/albums.dart';
import '../entities/photos.dart';
import '../entities/post.dart';
import '../repositories/api_repository.dart';

class ApiUseCase{
  final ApiRepository repo;
  ApiUseCase(this.repo);
  Future<List<Post>> getPosts() => repo.fetchPosts();
  Future<List<Album>> getAlbums() => repo.fetchAlbums();
  Future<List<Photo>> getPhotos() => repo.fetchPhotos();
}
