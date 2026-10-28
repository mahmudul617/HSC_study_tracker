import 'package:flutter/material.dart';
import '../../core/theme/neon_theme.dart';
import '../../core/widgets/neon_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Study Tracker - HSC 27')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            NeonCard(
              glowColor: NeonColors.cyan,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome Mahmudul!', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 8),
                  const Text('Your HSC 2027 journey is ready.', style: TextStyle(color: NeonColors.textMuted)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}