import 'package:flutter/material.dart';
import '../theme/neon_theme.dart';

class GlowButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color glowColor;
  final IconData? icon;

  const GlowButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.glowColor = NeonColors.cyan,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: glowColor.withValues(alpha: 0.4),
            blurRadius: 12,
            spreadRadius: 1,
          ),
        ],
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: glowColor,
          foregroundColor: NeonColors.background,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        icon: icon != null ? Icon(icon, color: NeonColors.background) : const SizedBox.shrink(),
        label: Text(label),
      ),
    );
  }
}