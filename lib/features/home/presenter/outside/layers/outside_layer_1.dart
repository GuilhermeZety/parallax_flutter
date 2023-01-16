import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teste_parallax/core/utils/media_query_util.dart';

import 'package:teste_parallax/core/constants/app_assets.dart';
import 'package:teste_parallax/core/constants/app_colors.dart';

class OutsideLayer1 extends StatelessWidget {
  const OutsideLayer1({super.key, required this.offset, required this.speed, required this.location});

  final double offset;
  final double speed;
  final double location;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: location + (offset * speed),
      right: 0,
      left: 0,
      child: SvgPicture.asset(AppAssets.outsideLayer_1, alignment: Alignment.bottomCenter, color: AppColors.layer1, width: MediaQueryUtils.width(context),), 
    );
  }
}