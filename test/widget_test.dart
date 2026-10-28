import 'package:flutter_test/flutter_test.dart';
import 'package:study_tracker/app.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const StudyTrackerApp());
  });
}