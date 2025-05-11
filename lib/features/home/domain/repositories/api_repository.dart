import '../entities/albums.dart';
import '../entities/photos.dart';
import '../entities/post.dart';

abstract class ApiRepository {
  Future<List<Post>> fetchPosts();
  Future<List<Album>> fetchAlbums();
  Future<List<Photo>> fetchPhotos();
}