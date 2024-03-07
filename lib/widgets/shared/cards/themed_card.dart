import 'dart:ui';

import 'package:flutter/material.dart';

class ThemedCard extends StatelessWidget {
  const ThemedCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //     color: Theme.of(context).primaryColor,
          //     spreadRadius: 0,
          //     blurRadius: 2,
          //   ),
          // ],
          borderRadius: BorderRadius.circular(16),
          // color: Theme.of(context).cardColor
        ),
        alignment: Alignment.topLeft,
        child: child,
      ),
    );
  }
}
