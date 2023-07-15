import 'package:flutter/cupertino.dart';

class OrientationLayout extends StatelessWidget {
  final Widget portraitMode;
  final Widget landscapeMode;
  const OrientationLayout({super.key, required this.portraitMode, required this.landscapeMode});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder:(context, orientation) {
      return orientation == Orientation.portrait ? portraitMode : landscapeMode;
    },);
  }
}
