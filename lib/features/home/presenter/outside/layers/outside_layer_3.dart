import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:teste_parallax/core/constants/app_assets.dart';

class OutsideLayer3 extends StatelessWidget {
  const OutsideLayer3({super.key, required this.offset, required this.speed, required this.location});

  final double offset;
  final double speed;
  final double location;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: location - 10 + (offset * speed),
      right: 0,
      left: 0,
      child: SvgPicture.asset(AppAssets.outsideMountainsLayer_3, alignment: Alignment.bottomCenter,), 
    );
  }
}