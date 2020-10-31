library flutter_avatar;

import 'package:flutter/material.dart';

enum BadgePosition { bottomRight, bottomLeft, topRight, topLeft }

class FlutterAvatar extends StatelessWidget {
  const FlutterAvatar({
    this.radius,
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

  final double radius;
  final BorderRadius borderRadius;
  final BoxShape shape;
  final BadgePosition badgePosition;
  final Widget badge;
  final Color backgroundColor;
  final Widget child;
  final BoxShadow avatarShadow;
  final double elevation;
  final Color elevationColor;

  @override
  Widget build(BuildContext context) {
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
        : Container(
            height: radius * 2,
            width: radius * 2,
            // color: Colors.blue,
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

  dynamic _mapPositionToValues(BadgePosition badgePosition) {
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
