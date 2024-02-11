import 'package:flutter/material.dart';

class HighlightedIcon extends StatelessWidget {
  const HighlightedIcon({
    super.key,
    required this.child,
    required this.iconColor,
  });

  final Widget child;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 32.0,
      decoration: BoxDecoration(
        color: Color.lerp(
            iconColor, Theme.of(context).scaffoldBackgroundColor, 0.75),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      padding: const EdgeInsets.all(4.0),
      child: child,
    );
  }
}
