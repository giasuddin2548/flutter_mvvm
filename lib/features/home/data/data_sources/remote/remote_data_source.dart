

import 'api_client.dart';
import '../../models/album_model.dart';
import '../../models/photo_model.dart';
import '../../models/post_model.dart';

class RemoteDataSource {
  final ApiClient client;

  RemoteDataSource(this.client);

  Future<List<PostModel>> fetchPosts() async {
    final response = await client.getData('/posts', {});
    return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
  }

  Future<List<AlbumModel>> fetchAlbums() async {
    final response = await client.getData('/albums', {});
    return (response.data as List).map((e) => AlbumModel.fromJson(e)).toList();
  }

  Future<List<PhotoModel>> fetchPhotos() async {
    final response = await client.getData('/photos', {});
    return (response.data as List).map((e) => PhotoModel.fromJson(e)).toList();
  }
}