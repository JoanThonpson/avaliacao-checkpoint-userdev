import 'package:flutter/material.dart';
import 'package:usedev/src/core/utils/responsive_helper.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    if (ResponsiveHelper.isDesktop(context)) {
      return desktop;
    } else if (ResponsiveHelper.isTablet(context)) {
      return tablet;
    } else {
      return mobile;
    }
  }
}