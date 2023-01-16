import 'package:flutter/material.dart';

class SunPresenter extends StatefulWidget {
  const SunPresenter({super.key});

  @override
  State<SunPresenter> createState() => _SunPresenterState();
}

class _SunPresenterState extends State<SunPresenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'sun',
        child: Container(
          color: Colors.amber,
        ),
      ),
    );
  }
}