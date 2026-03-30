import 'package:flutter/material.dart';
import 'package:usedev/src/screens/home/mobile_home.dart';
import 'package:usedev/src/widgets/responsive/responsive_layout.dart';
//import 'package:usedev/src/screens/home/mobile_home.dart';
import 'package:usedev/src/screens/home/tablet_home.dart';
import 'package:usedev/src/screens/home/desktop_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: const MobileHome(),
      tablet: const TabletHome(),
      desktop: const DesktopHome(),
    );
  }
}