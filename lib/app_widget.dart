
import 'package:flutter/material.dart';

import 'package:teste_parallax/features/home/presenter/home_presenter.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Unbounded',
        
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePresenter(),
    );
  }
}