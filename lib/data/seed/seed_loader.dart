import 'dart:convert';
import 'package:drift/drift.dart';
import 'package:flutter/services.dart';
import '../db/app_db.dart';

class SeedLoader {
  static Future<void> loadSeedData(AppDatabase db) async {
    final jsonString = await rootBundle.loadString('assets/data/syllabus_seed.json');
    final Map<String, dynamic> data = json.decode(jsonString);
    
    final subjects = data['subjects'] as List<dynamic>;
    for (var s in subjects) {
      final subjectId = s['id'] as String;
      await db.into(db.subjects).insertOnConflictUpdate(
        SubjectsCompanion.insert(
          id: subjectId,
          groupKey: s['group'] as String,
          nameBn: s['name_bn'] as String,
          nameEn: s['name_en'] as String,
          code: s['code'] as String,
          marksInfo: s['marks'] as String,
          confidence: s['confidence'] as String,
          sortOrder: 0,
        ),
      );

      final chapters = s['chapters'] as List<dynamic>;
      for (var c in chapters) {
        final chapterNo = c['no'] as int;
        final chapterId = '$subjectId-ch-$chapterNo';
        await db.into(db.chapters).insertOnConflictUpdate(
          ChaptersCompanion.insert(
            id: chapterId,
            subjectId: subjectId,
            orderNo: chapterNo,
            titleBn: c['title_bn'] as String,
            titleEn: (c['title_en'] as String?) ?? (c['title_bn'] as String),
            inSyllabus: Value(c['in_syllabus'] as bool? ?? true),
            verified: c['verified'] as String,
          ),
        );

        final topics = c['topics'] as List<dynamic>;
        for (int i = 0; i < topics.length; i++) {
          final t = topics[i];
          final topicId = '$chapterId-top-$i';
          await db.into(db.topics).insertOnConflictUpdate(
            TopicsCompanion.insert(
              id: topicId,
              chapterId: chapterId,
              orderNo: i + 1,
              titleBn: t['title_bn'] as String,
              titleEn: (t['title_en'] as String?) ?? (t['title_bn'] as String),
            ),
          );
        }
      }
    }
  }
}