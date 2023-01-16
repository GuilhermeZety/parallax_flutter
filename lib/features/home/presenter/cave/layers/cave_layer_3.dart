import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import 'package:teste_parallax/core/constants/app_assets.dart';
import 'package:teste_parallax/core/utils/media_query_util.dart';

class CaveLayer3 extends StatelessWidget {
  const CaveLayer3({super.key, required this.offset, required this.speed});

  final double offset;
  final double speed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: (offset * speed),
          right: 0,
          left: 0,
          child: SvgPicture.asset(AppAssets.caveLayer_3, alignment: Alignment.bottomCenter,),           
        ),
        Positioned(
          top: (offset * speed),
          right: 0,
          left: 0,
          child: SvgPicture.asset(AppAssets.caveLayer_3_2, alignment: Alignment.bottomCenter,),           
        ),
        Positioned(bottom: 0 - (offset *(speed + 0.02)), child: Container(width: MediaQueryUtils.width(context), height: 50, color: const Color(0xFF345C64),)),  
      ],
    );
  }
}