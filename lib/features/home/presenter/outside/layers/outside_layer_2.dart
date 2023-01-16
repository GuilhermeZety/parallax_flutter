import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:teste_parallax/core/constants/app_assets.dart';
import 'package:teste_parallax/core/constants/app_colors.dart';

class OutsideLayer2 extends StatelessWidget {
  const OutsideLayer2({super.key, required this.offset, required this.speed, required this.location});

  final double offset;
  final double speed;
  final double location;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: location + 10 + (offset * (speed + 0.02)) ,
          right: 0,
          left: 0,
          child: SvgPicture.asset(AppAssets.outsideMountainsLayer_2, alignment: Alignment.bottomCenter, color: AppColors.layer2d,), 
        ),
        Positioned(
          bottom: location + 10 + (offset * (speed + 0.05)),
          right: 0,
          left: 0,
          child: SvgPicture.asset(AppAssets.outsideTreesLayer_2, alignment: Alignment.bottomCenter, color: AppColors.layer2u,), 
        ),
      ],
    );
  }
}