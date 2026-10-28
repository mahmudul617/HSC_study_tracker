import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../data/db/app_db.dart';
import '../../../data/seed/seed_loader.dart';

final sharedPrefsProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('Initialize sharedPreferencesProvider in main.dart');
});

final onboardingProvider = StateNotifierProvider<OnboardingNotifier, bool>((ref) {
  final prefs = ref.watch(sharedPrefsProvider);
  return OnboardingNotifier(prefs);
});

class OnboardingNotifier extends StateNotifier<bool> {
  final SharedPreferences _prefs;

  OnboardingNotifier(this._prefs)
      : super(_prefs.getBool('onboarding_complete') ?? false);

  Future<void> completeOnboarding({
    required String languageCode,
    required String selectedGroup,
  }) async {
    await _prefs.setString('language_code', languageCode);
    await _prefs.setString('selected_group', selectedGroup);
    
    // Seed Database with initial syllabus JSON
    final db = AppDatabase();
    await SeedLoader.loadSeedData(db);

    await _prefs.setBool('onboarding_complete', true);
    state = true;
  }
}