import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';

part 'app_db.g.dart';

class Subjects extends Table {
  TextColumn get id => text()();
  TextColumn get groupKey => text()();
  TextColumn get nameBn => text()();
  TextColumn get nameEn => text()();
  TextColumn get code => text()();
  TextColumn get marksInfo => text()();
  TextColumn get confidence => text()();
  IntColumn get sortOrder => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

class Chapters extends Table {
  TextColumn get id => text()();
  TextColumn get subjectId => text()();
  IntColumn get orderNo => integer()();
  TextColumn get titleBn => text()();
  TextColumn get titleEn => text()();
  BoolColumn get inSyllabus => boolean().withDefault(const Constant(true))();
  TextColumn get verified => text()();
  BoolColumn get isCustom => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

class Topics extends Table {
  TextColumn get id => text()();
  TextColumn get chapterId => text()();
  IntColumn get orderNo => integer()();
  TextColumn get titleBn => text()();
  TextColumn get titleEn => text()();
  BoolColumn get isDone => boolean().withDefault(const Constant(false))();
  DateTimeColumn get doneAt => dateTime().nullable()();
  TextColumn get note => text().nullable()();
  BoolColumn get isWeak => boolean().withDefault(const Constant(false))();
  IntColumn get revisionCount => integer().withDefault(const Constant(0))();
  BoolColumn get isCustom => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

class UserProfiles extends Table {
  TextColumn get id => text()();
  TextColumn get groupKey => text()();
  TextColumn get language => text()();
  DateTimeColumn get examDate => dateTime()();
  TextColumn get weekStartDay => text().withDefault(const Constant('Saturday'))();
  BoolColumn get bnDigits => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

class StudySessions extends Table {
  TextColumn get id => text()();
  TextColumn get subjectId => text().nullable()();
  TextColumn get chapterId => text().nullable()();
  DateTimeColumn get startAt => dateTime()();
  DateTimeColumn get endAt => dateTime()();
  IntColumn get durationSec => integer()();
  TextColumn get mode => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [Subjects, Chapters, Topics, UserProfiles, StudySessions])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'hsc27_tracker.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}