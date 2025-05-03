import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:flutter_mvvm/presentation/pages/home_screen.dart';
import 'package:flutter_mvvm/service_locator.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(create: (_){
            return sl<HomeBloc>();
          }),
        ],
        child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  HomeScreen(),
    )
    );
  }
}

