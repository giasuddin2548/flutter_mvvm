
//2. Low-Level Module (Implementation Layer):
import '../../domain/entities/albums.dart';
import '../../domain/entities/photos.dart';
import '../../domain/entities/post.dart';
import '../../domain/repositories/api_repository.dart';
import '../data_sources/remote/remote_data_source.dart';

class ApiRepoImpl extends ApiRepository{
  final RemoteDataSource _remoteDataSource;
  ApiRepoImpl(this._remoteDataSource);

  @override
  Future<List<Post>> fetchPosts() => _remoteDataSource.fetchPosts();

  @override
  Future<List<Album>> fetchAlbums() => _remoteDataSource.fetchAlbums();

  @override
  Future<List<Photo>> fetchPhotos() => _remoteDataSource.fetchPhotos();

}