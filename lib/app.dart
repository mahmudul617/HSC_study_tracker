import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/router/app_router.dart';
import 'core/theme/neon_theme.dart';

class StudyTrackerApp extends ConsumerWidget {
  const StudyTrackerApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'HSC 2027 Study Tracker',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: NeonColors.background,
        colorScheme: const ColorScheme.dark(
          primary: NeonColors.cyan,
          secondary: NeonColors.magenta,
          surface: NeonColors.surface,
        ),
      ),
      routerConfig: appRouter,
    );
  }
}