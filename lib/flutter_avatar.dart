library flutter_avatar;

import 'package:flutter/material.dart';

enum BadgePosition { bottomRight, bottomLeft, topRight, topLeft }

class FlutterAvatar extends StatelessWidget {
  /// Creates a avatar widget which is highly customizable
  const FlutterAvatar({
    this.radius = 20.0,
    this.borderRadius,
    this.shape = BoxShape.rectangle,
    this.badgePosition,
    this.badge,
    this.avatarShadow,
    this.backgroundColor,
    this.child,
    this.elevation = 5.0,
    this.elevationColor = Colors.black,
  }) : assert(shape != BoxShape.circle || borderRadius == null);

  /// The size of the [FlutterAvatar], which is half of the Diameter
  ///
  /// defaults to 20
  final double radius;

  /// if non-null, the corners of the [FlutterAvatar] are rounded by the value of the [borderRadius]
  ///
  /// Can only be used when [shape] is [BosShape.rectangle], cannot be used if [shape] is [BoxShape.circle].
  final BorderRadius borderRadius;

  /// The shape to be used for the [FlutterAvatar].
  ///
  /// If [shape] is [BoxShape.circle], the [borderRadius] cannot be used.
  /// If [shape] is [BoxShape.rectangle], specify a [borderRadius].
  final BoxShape shape;

  /// Used to change the position of the [badge] widget that is stacked on top of [FlutterAvatar]
  ///
  /// defaults to [BadgePosition.topLeft]
  final BadgePosition badgePosition;

  /// The widget that is stacked on top of the [FlutterAvatar]
  ///
  /// Use [badgePosition] to change the position of the [badge] widget.
  final Widget badge;

  /// The color used to fill the [FlutterAvatar].
  final Color backgroundColor;

  /// The widget below this widget [FlutterAvatar] in the widget tree
  ///
  /// Can be a [Text] widget. If the [FlutterAvatar] requires an image, use [backgroundImage].
  final Widget child;

  /// The [avatarShadow] is cast behind the [FlutterAvatar] widget
  final BoxShadow avatarShadow;

  /// The elevation of the [FlutterAvatar] widget.
  ///
  /// The [elevation] defaults to 5.0 if a value isn't specified.
  final double elevation;

  /// The color of the [elevation]
  final Color elevationColor;

  @override
  Widget build(BuildContext context) {
    /// returns the [_ItemWidget] if the [badge] is null
    return badge == null
        ? _ItemWidget(
            radius: radius,
            borderRadius: borderRadius,
            shape: shape,
            color: backgroundColor,
            boxShadow: avatarShadow,
            elevation: elevation,
            elevationColor: elevationColor,
            child: child,
            // image: widget.backgroundImage,
          )

        /// returns a stack of widgets containing the [_ItemWidget] andd the [badge] if the [badge] is specified
        : SizedBox(
            height: radius * 2,
            width: radius * 2,
            child: Stack(
              children: [
                Center(
                  child: _ItemWidget(
                    radius: radius,
                    borderRadius: borderRadius,
                    shape: shape,
                    color: backgroundColor,
                    boxShadow: avatarShadow,
                    elevation: elevation,
                    elevationColor: elevationColor,
                    child: child,
                    // image: widget.backgroundImage,
                  ),
                ),
                Positioned(
                  left: _mapPositionToValues(badgePosition)[0],
                  top: _mapPositionToValues(badgePosition)[1],
                  right: _mapPositionToValues(badgePosition)[2],
                  bottom: _mapPositionToValues(badgePosition)[3],
                  child: badge,
                  // alignment: badgePosition,
                ),
              ],
            ),
          );
  }

  /// used to determine the [badgePosition] to be used for the [badge]
  List<double> _mapPositionToValues(BadgePosition badgePosition) {
    // [left value, top value, right value, bottom value]
    switch (badgePosition) {
      case BadgePosition.bottomRight:
        // return array containing bottom and right values
        return [null, null, 0.0, 0.0];
      case BadgePosition.bottomLeft:
        return [0.0, null, null, 0.0];
      case BadgePosition.topRight:
        return [null, 0.0, 0.0, null];
      case BadgePosition.topLeft:
        return [0.0, 0.0, null, null];
      default:
        // topLeft for default
        return [null, 0.0, 0.0, null];
    }
  }
}

/// creates an [_ItemWidget]
class _ItemWidget extends StatelessWidget {
  const _ItemWidget({
    Key key,
    this.radius,
    this.borderRadius,
    this.shape,
    this.color,
    this.enableBlur,
    this.blurColor,
    this.child,
    this.boxShadow,
    this.elevation,
    this.elevationColor,
  }) : super(key: key);

  final double radius;
  final BorderRadius borderRadius;
  final BoxShape shape;
  final Color color;
  final Widget child;
  final bool enableBlur;
  final Color blurColor;
  final BoxShadow boxShadow;
  final double elevation;
  final Color elevationColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      color: Colors.transparent,
      type: borderRadius == null ? MaterialType.circle : MaterialType.canvas,
      borderRadius: borderRadius,
      shadowColor: elevationColor,
      child: SizedBox(
        height: radius * 2,
        width: radius * 2,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            shape: shape,
            color: color,
            boxShadow: boxShadow != null ? [boxShadow] : null,
          ),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
