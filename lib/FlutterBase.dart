import 'dart:ui' as ui;

import 'package:FlutterBase/ThirdParty/AutoSize/auto_size.dart';
import 'package:FlutterBase/Utils/DeviceUtil.dart';
import 'package:FlutterBase/Utils/ScreenUtil.dart';

class FlutterBase {
  static String? keyEncrypt;

  static init() {
    ScreenUtil.pixelRatio = AutoSize.getPixelRatio();
    ScreenUtil.heightTopSafeArea = ui.window.viewPadding.top / AutoSize.getPixelRatio();
    ScreenUtil.heightBottomSafeArea = ui.window.viewPadding.bottom / AutoSize.getPixelRatio();
    DeviceUtil.initData();
  }

}
