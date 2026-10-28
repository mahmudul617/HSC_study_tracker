import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/neon_theme.dart';
import '../../core/widgets/glow_button.dart';
import '../../core/widgets/neon_card.dart';
import 'providers/onboarding_provider.dart';

class LanguageScreen extends ConsumerStatefulWidget {
  const LanguageScreen({super.key});

  @override
  ConsumerState<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends ConsumerState<LanguageScreen> {
  String _selectedLang = 'bn';
  String _selectedGroup = 'science';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeonColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 32),
                      Text(
                        'HSC 2027 Study Tracker',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: NeonColors.cyan,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'আপনার পড়াশোনা গুছিয়ে নেওয়ার প্রস্তুত ট্র্যাকার',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: NeonColors.textSecondary,
                            ),
                      ),
                      const SizedBox(height: 40),

                      // Language Selection
                      Text(
                        'ভাষা নির্বাচন করুন / Select Language',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: NeonColors.textPrimary,
                                ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() => _selectedLang = 'bn'),
                              child: NeonCard(
                                child: Center(
                                  child: Text(
                                    'বাংলা',
                                    style: TextStyle(
                                      color: _selectedLang == 'bn'
                                          ? NeonColors.cyan
                                          : NeonColors.textSecondary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() => _selectedLang = 'en'),
                              child: NeonCard(
                                child: Center(
                                  child: Text(
                                    'English',
                                    style: TextStyle(
                                      color: _selectedLang == 'en'
                                          ? NeonColors.cyan
                                          : NeonColors.textSecondary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 32),

                      // Group Selection
                      Text(
                        'আপনার বিভাগ নির্বাচন করুন',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: NeonColors.textPrimary,
                                ),
                      ),
                      const SizedBox(height: 12),
                      _buildGroupTile('science', 'বিজ্ঞান (Science)'),
                      const SizedBox(height: 8),
                      _buildGroupTile('humanities', 'মানবিক (Humanities)'),
                      const SizedBox(height: 8),
                      _buildGroupTile(
                          'business', 'ব্যবসায় শিক্ষা (Business Studies)'),

                      const Spacer(),

                      GlowButton(
                        label: 'শুরু করুন',
                        onPressed: () async {
                          await ref
                              .read(onboardingProvider.notifier)
                              .completeOnboarding(
                                languageCode: _selectedLang,
                                selectedGroup: _selectedGroup,
                              );
                          if (!context.mounted) return;
                          context.go('/home');
                        },
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGroupTile(String key, String title) {
    final isSelected = _selectedGroup == key;
    return GestureDetector(
      onTap: () => setState(() => _selectedGroup = key),
      child: NeonCard(
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
              color: isSelected ? NeonColors.magenta : NeonColors.textSecondary,
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(
                color: isSelected
                    ? NeonColors.textPrimary
                    : NeonColors.textSecondary,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}