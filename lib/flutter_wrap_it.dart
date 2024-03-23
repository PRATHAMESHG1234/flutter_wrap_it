library package_hello;

import 'package:flutter/material.dart';

class BottomModalSheet {
  BuildContext context;
  WidgetBuilder builder;
  Color? backgroundColor;
  String? barrierLabel;
  double? elevation;
  ShapeBorder? shape;
  Clip? clipBehavior;
  BoxConstraints? constraints;
  Color? barrierColor;
  bool isScrollControlled = false;
  bool useRootNavigator = false;
  bool isDismissible = true;
  bool enableDrag = true;
  bool? showDragHandle;
  bool useSafeArea = false;
  RouteSettings? routeSettings;
  AnimationController? transitionAnimationController;
  Offset? anchorPoint;
  BottomModalSheet({
    required this.context,
    required this.builder,
    this.backgroundColor,
    this.barrierLabel,
    this.elevation,
    this.shape,
    this.clipBehavior,
    this.constraints,
    this.barrierColor,
    this.isScrollControlled = false,
    this.useRootNavigator = false,
    this.isDismissible = true,
    this.enableDrag = true,
    this.showDragHandle,
    this.useSafeArea = false,
    this.routeSettings,
    this.transitionAnimationController,
    this.anchorPoint,
  }) {
    showModalBottomSheet(
      context: context,
      builder: builder,
      backgroundColor: backgroundColor,
      barrierLabel: barrierLabel,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      constraints: constraints,
      barrierColor: barrierColor,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      showDragHandle: showDragHandle,
      useSafeArea: useSafeArea,
      routeSettings: routeSettings,
      transitionAnimationController: transitionAnimationController,
      anchorPoint: anchorPoint,
    );
  }
}
