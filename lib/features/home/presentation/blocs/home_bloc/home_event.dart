
import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable{}

class HomeInitialEvent extends HomeEvent{
  @override
  List<Object?> get props => [];
}