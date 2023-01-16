import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import 'package:teste_parallax/core/constants/app_assets.dart';

class CaveLayerLantern extends StatelessWidget {
  const CaveLayerLantern({super.key, required this.offset, required this.speed});

  final double offset;
  final double speed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (offset * speed),
      right: 0,
      left: 0,
      child: SvgPicture.asset(AppAssets.caveLanternLayer, alignment: Alignment.bottomCenter,),           
    );
  }
}