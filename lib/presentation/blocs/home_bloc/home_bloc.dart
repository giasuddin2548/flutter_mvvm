import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/domain/use_cases/api_usecase.dart';
import 'package:flutter_mvvm/presentation/blocs/home_bloc/home_event.dart';
import 'package:flutter_mvvm/presentation/blocs/home_bloc/home_state.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState>{

  ApiUseCase apiUseCase;

  HomeBloc(this.apiUseCase): super(HomeInitialState()){
    on<HomeInitialEvent>(_onInitHomeEvent);
  }

  FutureOr<void> _onInitHomeEvent(HomeInitialEvent event, Emitter<HomeState> emit)async {
    try{
      emit(HomeLoadingState());
      var finalData =await apiUseCase.getPosts();
      emit(HomeLoadedState(finalData));
    }catch(e){
      emit(HomeErrorState('Network Error'));
    }
  }
}