import 'package:flutter_mvvm/data/data_sources/remote/remote_data_source.dart';
import 'package:flutter_mvvm/domain/entities/albums.dart';
import 'package:flutter_mvvm/domain/entities/photos.dart';
import 'package:flutter_mvvm/domain/entities/post.dart';

import 'package:flutter_mvvm/domain/repositories/api_repository.dart';

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