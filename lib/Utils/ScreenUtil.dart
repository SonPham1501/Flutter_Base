import 'package:FlutterBase/ThirdParty/AutoSize/auto_size.dart';
import 'package:flutter/material.dart';

class ScreenUtil {
  static bool isGetPixelRatio = false;
  static double heightTopSafeArea = 0;
  static double heightBottomSafeArea = 0;
  static double heightBottomSafeAreaKeyboard = 0;
  static double pixelRatio = 1;
  static double autoSizeRatio = 1;
  static Size? screenSize;
  static MediaQueryData? mediaQueryDataApp;

  static void initSize(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size != Size.zero) {
      final Size autoSize =
          size.width > size.height ? new Size(size.width / _getPixelRatio(context), AutoSizeConfig.designWidth) : new Size(AutoSizeConfig.designWidth, size.height / _getPixelRatio(context));
      screenSize = autoSize;
    }
  }

  static double _getPixelRatio(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return (size.width > size.height ? size.height : size.width) / AutoSizeConfig.designWidth;
  }
}
