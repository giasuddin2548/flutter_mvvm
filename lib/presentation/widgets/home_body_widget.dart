import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:flutter_mvvm/presentation/blocs/home_bloc/home_event.dart';
import 'package:flutter_mvvm/presentation/blocs/home_bloc/home_state.dart';

class HomeBodyWidget extends StatefulWidget {
  const HomeBodyWidget({super.key});

  @override
  State<HomeBodyWidget> createState() => _HomeBodyWidgetState();
}

class _HomeBodyWidgetState extends State<HomeBodyWidget> {

  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(HomeInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is HomeErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      builder: (context, state) {
        if (state is HomeInitialState || state is HomeLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HomeLoadedState) {
          final list = state.dataList;

          if (list.isEmpty) {
            return const Center(child: Text("No data available"));
          }

          return ListView.builder(
            itemCount: list.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              final item = list[index];
              return ListTile(
                leading: const Icon(Icons.task),
                title: Text(item.title),
              );
            },
          );
        } else if (state is HomeErrorState) {
          return Center(child: Text(state.message));
        } else {
          return const Center(child: Text("Unexpected error occurred."));
        }
      },
    );
  }
}
