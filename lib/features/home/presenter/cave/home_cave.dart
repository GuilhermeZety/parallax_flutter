import 'package:flutter/material.dart';
import 'package:teste_parallax/features/home/presenter/cave/layers/cave_layer_1.dart';
import 'package:teste_parallax/features/home/presenter/cave/layers/cave_layer_3.dart';
import 'package:teste_parallax/features/home/presenter/cave/layers/cave_layer_5.dart';
import 'package:teste_parallax/features/home/presenter/cave/layers/cave_layer_lantern.dart';

import 'package:teste_parallax/core/utils/media_query_util.dart';
import 'package:teste_parallax/features/home/presenter/cave/layers/cave_layer_2.dart';
import 'package:teste_parallax/features/home/presenter/cave/layers/cave_layer_4.dart';


class HomeCave extends StatefulWidget {
  const HomeCave({super.key, required this.scrollOffset, required this.location});

  final double scrollOffset;
  final double location;

  @override
  State<HomeCave> createState() => _HomeCaveState();
}

class _HomeCaveState extends State<HomeCave> {

  @override
  Widget build(BuildContext context) {
    var pageSize = (MediaQueryUtils.height(context) + 500);
    return SizedBox(
      height: 400,
      width: MediaQueryUtils.width(context),
      child: Stack(
        children: [
          const CaveLayer5(),

          CaveLayer4(offset: pageSize - widget.scrollOffset, speed: 0.06),          
          CaveLayer3(offset: pageSize - widget.scrollOffset, speed: 0.05),          
          CaveLayerLantern(offset: pageSize - widget.scrollOffset, speed: 0.02),          
          CaveLayer2(offset: pageSize - widget.scrollOffset, speed: 0.02),          
          const CaveLayer1(),


          Positioned(bottom: 0, child: Container(width: MediaQueryUtils.width(context), height: 50, color: Colors.black,))
        ],
      ),
    );
  }
}