import 'package:flutter/material.dart';

import 'Screens/landscape_mode_screen.dart';
import 'orientation_layout.dart';
import 'Screens/portrait_mode_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const OrientationLayout(
        portraitMode: PortraitModeScreen(),
        landscapeMode: LandscapeModeScreen(),
      ),
    );
  }
}
