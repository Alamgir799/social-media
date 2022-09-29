import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const Responsive({
    required this.mobile,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width < 600) {
      return mobile;
    }
    // Or less then that we called it mobile
    else {
      return desktop;
    }
  }
}
