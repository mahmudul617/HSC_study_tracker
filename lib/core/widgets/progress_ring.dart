import 'package:flutter/material.dart';
import '../theme/neon_theme.dart';

class ProgressRing extends StatelessWidget {
  final double progress;
  final double size;
  final Color color;
  final Widget? centerChild;

  const ProgressRing({
    super.key,
    required this.progress,
    this.size = 100,
    this.color = NeonColors.cyan,
    this.centerChild,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            value: progress.clamp(0.0, 1.0),
            strokeWidth: 8,
            backgroundColor: NeonColors.elevated,
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
          if (centerChild != null) centerChild!,
        ],
      ),
    );
  }
}