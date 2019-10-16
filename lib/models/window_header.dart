import 'package:flutter/material.dart';
import 'package:system_alert_window/models/window_button.dart';
import 'package:system_alert_window/models/window_decoration.dart';
import 'package:system_alert_window/models/window_padding.dart';
import 'package:system_alert_window/models/window_text.dart';
import 'package:system_alert_window/system_alert_window.dart';
import 'package:system_alert_window/utils/commons.dart';

class WindowHeader {
  @required
  WindowText title;
  WindowText subTitle;
  WindowButton button;
  WindowPadding padding;
  ButtonPosition buttonPosition;
  WindowDecoration decoration;

  WindowHeader(
      {this.title,
      this.subTitle,
      this.button,
      this.padding,
      this.buttonPosition,
      this.decoration});

  Map<String, dynamic> getMap() {
    final Map<String, dynamic> map = <String, dynamic>{
      'title': title?.getMap(),
      'subTitle': subTitle?.getMap(),
      'button': button?.getMap(),
      'padding': padding?.getMap(),
      'buttonPosition': Commons.getPosition(buttonPosition),
      'decoration': decoration?.getMap()
    };
    return map;
  }
}
