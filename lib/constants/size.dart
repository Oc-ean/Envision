import 'package:flutter/widgets.dart';

class ScreenSize {
  final BuildContext context;

  ScreenSize(this.context);

  // Get the screen width
  double get width => MediaQuery.of(context).size.width;

  // Get the screen height
  double get height => MediaQuery.of(context).size.height;

  // Get the device pixel ratio
  double get pixelRatio => MediaQuery.of(context).devicePixelRatio;

  // Get the orientation of the device
  Orientation get orientation => MediaQuery.of(context).orientation;

  // Check if the device is in landscape mode
  bool get isLandscape => orientation == Orientation.landscape;

  // Check if the device is in portrait mode
  bool get isPortrait => orientation == Orientation.portrait;

  // Check if the screen width is small (e.g., mobile devices)
  bool get isSmallScreen => width < 600;

  // Check if the screen width is medium (e.g., tablets)
  bool get isMediumScreen => width >= 600 && width < 1200;

  // Check if the screen width is large (e.g., desktops)
  bool get isLargeScreen => width >= 1200;

  // Check if the screen height is small
  bool get isSmallHeight => height < 600;

  // Check if the screen height is medium
  bool get isMediumHeight => height >= 600 && height < 800;

  // Check if the screen height is large
  bool get isLargeHeight => height >= 800;

  // Custom responsive method to get a value based on screen size
  double getValueBasedOnScreen(double small, double medium, double large) {
    if (isSmallScreen) {
      return small;
    } else if (isMediumScreen) {
      return medium;
    } else {
      return large;
    }
  }
}
