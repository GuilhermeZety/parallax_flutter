import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import 'package:teste_parallax/core/constants/app_assets.dart';

class CaveLayer5 extends StatelessWidget {
  const CaveLayer5({super.key});


  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      child: SvgPicture.asset(AppAssets.caveLayer_5, alignment: Alignment.bottomCenter, fit: BoxFit.fitWidth, ), 
    );
  }
}