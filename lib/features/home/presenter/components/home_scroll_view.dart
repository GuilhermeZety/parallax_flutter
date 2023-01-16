import 'package:flutter/material.dart';

import 'package:teste_parallax/core/utils/media_query_util.dart';

class HomeScrollView extends StatefulWidget {
  const HomeScrollView({super.key, required this.controller});

  final ScrollController controller;

  @override
  State<HomeScrollView> createState() => _HomeScrollViewState();
}

class _HomeScrollViewState extends State<HomeScrollView> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowIndicator();
          return true;
        },
        child: SingleChildScrollView(
          controller: widget.controller,
          physics: const ClampingScrollPhysics(),
          child: SizedBox(
            width: MediaQueryUtils.width(context),
            height: MediaQueryUtils.height(context) + 2100,
          ),
        ),
      ) 
    );
  }
}