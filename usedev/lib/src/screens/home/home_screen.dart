// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:usedev/src/widgets/responsive/responsive_layout.dart';

// Importações das telas
import 'package:usedev/src/screens/home/mobile_home.dart'; 
import 'package:usedev/src/screens/home/tablet_home.dart';
import 'package:usedev/src/screens/home/desktop_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: MobileHome(),
      tablet: TabletHome(),
      desktop: DesktopHome(),
    );
  }
}