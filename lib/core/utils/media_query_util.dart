import 'package:flutter/cupertino.dart';

class MediaQueryUtils {

  static double width(context) => MediaQuery.of(context).size.width;

  static double height(context) => MediaQuery.of(context).size.height;
}