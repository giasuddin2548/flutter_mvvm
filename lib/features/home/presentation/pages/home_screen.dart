import 'package:flutter/material.dart';

import '../widgets/home_body_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Clean App"),),
      body: HomeBodyWidget(),
    );
  }

}
