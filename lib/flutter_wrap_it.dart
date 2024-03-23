// ignore_for_file: must_be_immutable

library flutter_wrap_it;

import 'package:flutter/material.dart';

/// A wrapper widget for displaying a modal bottom sheet.
///
/// This widget provides a customizable interface for showing a modal bottom
/// sheet. It can be used to display various content within a modal bottom sheet.
class BottomModalSheetWrapper extends StatelessWidget {
  /// The build context.
  final BuildContext context;

  /// The builder for the content of the bottom sheet.
  final WidgetBuilder builder;

  /// The background color of the bottom sheet.
  final Color? backgroundColor;

  /// The semantic label used by screen readers for the bottom sheet barrier.
  final String? barrierLabel;

  /// The elevation of the bottom sheet.
  final double? elevation;

  /// The shape of the bottom sheet.
  final ShapeBorder? shape;

  /// The clip behavior of the bottom sheet.
  final Clip? clipBehavior;

  /// The constraints for the bottom sheet.
  final BoxConstraints? constraints;

  /// The color of the barrier below the bottom sheet.
  final Color? barrierColor;

  /// Whether the bottom sheet should be scroll-controlled.
  final bool isScrollControlled;

  /// Whether the bottom sheet should be displayed using the root navigator.
  final bool useRootNavigator;

  /// Whether the bottom sheet can be dismissed by tapping on the barrier.
  final bool isDismissible;

  /// Whether dragging on the bottom sheet is enabled.
  final bool enableDrag;

  /// Whether to show a drag handle on the bottom sheet.
  final bool? showDragHandle;

  /// Whether to adjust the bottom sheet to fit the safe area.
  final bool useSafeArea;

  /// The route settings for the bottom sheet.
  final RouteSettings? routeSettings;

  /// The animation controller for the transition animation.
  final AnimationController? transitionAnimationController;

  /// The anchor point for the bottom sheet.
  final Offset? anchorPoint;

  /// Constructs a [BottomModalSheetWrapper] widget.
  ///
  /// The [context] and [builder] parameters are required. All other parameters
  /// are optional and have default values.
  BottomModalSheetWrapper({
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
    // Show the modal bottom sheet when this widget is constructed.
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

  @override
  Widget build(BuildContext context) {
    // This widget doesn't render anything directly, it's just used to trigger
    // the display of the modal bottom sheet.
    return const SizedBox();
  }
}

class BottomModalSheet extends StatefulWidget {
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

  /// Align the [child] within the container.
  ///
  /// If non-null, the container will expand to fill its parent and position its
  /// child within itself according to the given value. If the incoming
  /// constraints are unbounded, then the child will be shrink-wrapped instead.
  ///
  /// Ignored if [child] is null.
  ///
  /// See also:
  ///
  ///  * [Alignment], a class with convenient constants typically used to
  ///    specify an [AlignmentGeometry].
  ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
  ///    relative to text direction.
  final AlignmentGeometry? alignment;

  /// Empty space to inscribe inside the [decoration]. The [child], if any, is
  /// placed inside this padding.
  ///
  /// This padding is in addition to any padding inherent in the [decoration];
  /// see [Decoration.padding].
  final EdgeInsetsGeometry? padding;

  /// The color to paint behind the [child].
  ///
  /// This property should be preferred when the background is a simple color.
  /// For other cases, such as gradients or images, use the [decoration]
  /// property.
  ///
  /// If the [decoration] is used, this property must be null. A background
  /// color may still be painted by the [decoration] even if this property is
  /// null.
  final Color? color;

  /// The decoration to paint behind the [child].
  ///
  /// Use the [color] property to specify a simple solid color.
  ///
  /// The [child] is not clipped to the decoration. To clip a child to the shape
  /// of a particular [ShapeDecoration], consider using a [ClipPath] widget.
  final Decoration? decoration;

  /// The decoration to paint in front of the [child].
  final Decoration? foregroundDecoration;

  /// Empty space to surround the [decoration] and [child].
  final EdgeInsetsGeometry? margin;

  /// The transformation matrix to apply before painting the container.
  final Matrix4? transform;

  /// The alignment of the origin, relative to the size of the container, if [transform] is specified.
  ///
  /// When [transform] is null, the value of this property is ignored.
  ///
  /// See also:
  ///
  ///  * [Transform.alignment], which is set by this property.
  final AlignmentGeometry? transformAlignment;

  BottomModalSheet({
    super.key,
    required this.context,
    required this.builder,
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.clipBehavior = Clip.none,
    this.backgroundColor,
    this.barrierLabel,
    this.elevation,
    this.shape,
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
  });

  @override
  State<BottomModalSheet> createState() => _BottomModalSheetState();
}

class _BottomModalSheetState extends State<BottomModalSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: widget.alignment ?? Alignment.bottomCenter,
      padding: widget.padding ?? const EdgeInsets.all(16),
      color: widget.decoration == null ? widget.color : null,
      decoration: widget.decoration,
      foregroundDecoration: widget.foregroundDecoration,
      child: BottomModalSheetWrapper(
          context: widget.context, builder: widget.builder),
    );
  }
}
