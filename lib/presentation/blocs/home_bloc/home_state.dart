import 'package:equatable/equatable.dart';
import 'package:flutter_mvvm/domain/entities/post.dart';

abstract class HomeState extends Equatable{

}

class HomeInitialState extends HomeState{

  @override
  List<Object?> get props => [];
}

class HomeLoadingState extends HomeState{

  @override
  List<Object?> get props => [];
}

class HomeLoadedState extends HomeState{
  List<Post> dataList;
  HomeLoadedState(this.dataList);

  @override
  List<Object?> get props => [];
}

class HomeErrorState extends HomeState{
  String message;
  HomeErrorState(this.message);
  @override
  List<Object?> get props => [];
}