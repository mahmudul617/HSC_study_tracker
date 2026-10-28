import 'package:flutter/material.dart';
import '../theme/neon_theme.dart';

class GlowBar extends StatelessWidget {
  final double progress;
  final Color color;
  final double height;

  const GlowBar({
    super.key,
    required this.progress,
    this.color = NeonColors.cyan,
    this.height = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: NeonColors.elevated,
        borderRadius: BorderRadius.circular(height / 2),
      ),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: progress.clamp(0.0, 1.0),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(height / 2),
            boxShadow: [
              BoxShadow(
                color: color.withValues(alpha: 0.6),
                blurRadius: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}