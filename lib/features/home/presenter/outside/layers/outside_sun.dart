import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_shadow/simple_shadow.dart';

import 'package:teste_parallax/core/constants/app_assets.dart';

class OutsideSun extends StatelessWidget {
  const OutsideSun({super.key, required this.offset, required this.speed});

  final double offset;
  final double speed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (offset * speed),
      left: -50,
      child: SimpleShadow(
        color: Colors.orange,
        offset: const Offset(0,0),
        opacity: 0.3,
        child: GestureDetector(onTap: () {}, child: Hero(tag: 'sun', child: SvgPicture.asset(AppAssets.sun,)))
      ), 
    );
  }
}