import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

extension BuildContextExtension on BuildContext {
  double get height => MediaQuery.sizeOf(this).height;

  double get width => MediaQuery.sizeOf(this).width;

  double get shortestSide => MediaQuery.sizeOf(this).shortestSide;

  double get longestSide => MediaQuery.sizeOf(this).longestSide;

  double get scale => MediaQuery.devicePixelRatioOf(this);

  double get aspectRatio => MediaQuery.sizeOf(this).aspectRatio;

  void get hideKeyboard => FocusScope.of(this).requestFocus(FocusNode());

  bool get canGoBack => Modular.to.canPop();

  TextTheme get textTheme => Theme.of(this).textTheme;

  ThemeData get theme => Theme.of(this);
}
