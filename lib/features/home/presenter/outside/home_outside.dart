import 'package:flutter/material.dart';

import 'package:teste_parallax/features/home/presenter/outside/layers/outside_layer_1.dart';
import 'package:teste_parallax/features/home/presenter/outside/layers/outside_layer_2.dart';
import 'package:teste_parallax/features/home/presenter/outside/layers/outside_layer_3.dart';
import 'package:teste_parallax/features/home/presenter/outside/layers/outside_sun.dart';


class HomeOutside extends StatefulWidget {
  const HomeOutside({super.key, required this.scrollOffset, required this.location});

  final double scrollOffset;
  final double location;

  @override
  State<HomeOutside> createState() => _HomeOutsideState();
}

class _HomeOutsideState extends State<HomeOutside> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OutsideSun(offset: widget.scrollOffset, speed: 0.02),
        OutsideLayer3(offset: widget.scrollOffset, speed: 0.35, location: widget.location),
        OutsideLayer2(offset: widget.scrollOffset, speed: 0.40, location: widget.location),
        OutsideLayer1(offset: widget.scrollOffset, speed: 0.5, location: widget.location),
      ],
    );
  }
}