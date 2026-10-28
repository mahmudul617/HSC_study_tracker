// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $SubjectsTable extends Subjects with TableInfo<$SubjectsTable, Subject> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubjectsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _groupKeyMeta =
      const VerificationMeta('groupKey');
  @override
  late final GeneratedColumn<String> groupKey = GeneratedColumn<String>(
      'group_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameBnMeta = const VerificationMeta('nameBn');
  @override
  late final GeneratedColumn<String> nameBn = GeneratedColumn<String>(
      'name_bn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameEnMeta = const VerificationMeta('nameEn');
  @override
  late final GeneratedColumn<String> nameEn = GeneratedColumn<String>(
      'name_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _marksInfoMeta =
      const VerificationMeta('marksInfo');
  @override
  late final GeneratedColumn<String> marksInfo = GeneratedColumn<String>(
      'marks_info', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _confidenceMeta =
      const VerificationMeta('confidence');
  @override
  late final GeneratedColumn<String> confidence = GeneratedColumn<String>(
      'confidence', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sortOrderMeta =
      const VerificationMeta('sortOrder');
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
      'sort_order', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, groupKey, nameBn, nameEn, code, marksInfo, confidence, sortOrder];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'subjects';
  @override
  VerificationContext validateIntegrity(Insertable<Subject> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('group_key')) {
      context.handle(_groupKeyMeta,
          groupKey.isAcceptableOrUnknown(data['group_key']!, _groupKeyMeta));
    } else if (isInserting) {
      context.missing(_groupKeyMeta);
    }
    if (data.containsKey('name_bn')) {
      context.handle(_nameBnMeta,
          nameBn.isAcceptableOrUnknown(data['name_bn']!, _nameBnMeta));
    } else if (isInserting) {
      context.missing(_nameBnMeta);
    }
    if (data.containsKey('name_en')) {
      context.handle(_nameEnMeta,
          nameEn.isAcceptableOrUnknown(data['name_en']!, _nameEnMeta));
    } else if (isInserting) {
      context.missing(_nameEnMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('marks_info')) {
      context.handle(_marksInfoMeta,
          marksInfo.isAcceptableOrUnknown(data['marks_info']!, _marksInfoMeta));
    } else if (isInserting) {
      context.missing(_marksInfoMeta);
    }
    if (data.containsKey('confidence')) {
      context.handle(
          _confidenceMeta,
          confidence.isAcceptableOrUnknown(
              data['confidence']!, _confidenceMeta));
    } else if (isInserting) {
      context.missing(_confidenceMeta);
    }
    if (data.containsKey('sort_order')) {
      context.handle(_sortOrderMeta,
          sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta));
    } else if (isInserting) {
      context.missing(_sortOrderMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Subject map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Subject(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      groupKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group_key'])!,
      nameBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_bn'])!,
      nameEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name_en'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      marksInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}marks_info'])!,
      confidence: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}confidence'])!,
      sortOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sort_order'])!,
    );
  }

  @override
  $SubjectsTable createAlias(String alias) {
    return $SubjectsTable(attachedDatabase, alias);
  }
}

class Subject extends DataClass implements Insertable<Subject> {
  final String id;
  final String groupKey;
  final String nameBn;
  final String nameEn;
  final String code;
  final String marksInfo;
  final String confidence;
  final int sortOrder;
  const Subject(
      {required this.id,
      required this.groupKey,
      required this.nameBn,
      required this.nameEn,
      required this.code,
      required this.marksInfo,
      required this.confidence,
      required this.sortOrder});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['group_key'] = Variable<String>(groupKey);
    map['name_bn'] = Variable<String>(nameBn);
    map['name_en'] = Variable<String>(nameEn);
    map['code'] = Variable<String>(code);
    map['marks_info'] = Variable<String>(marksInfo);
    map['confidence'] = Variable<String>(confidence);
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  SubjectsCompanion toCompanion(bool nullToAbsent) {
    return SubjectsCompanion(
      id: Value(id),
      groupKey: Value(groupKey),
      nameBn: Value(nameBn),
      nameEn: Value(nameEn),
      code: Value(code),
      marksInfo: Value(marksInfo),
      confidence: Value(confidence),
      sortOrder: Value(sortOrder),
    );
  }

  factory Subject.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Subject(
      id: serializer.fromJson<String>(json['id']),
      groupKey: serializer.fromJson<String>(json['groupKey']),
      nameBn: serializer.fromJson<String>(json['nameBn']),
      nameEn: serializer.fromJson<String>(json['nameEn']),
      code: serializer.fromJson<String>(json['code']),
      marksInfo: serializer.fromJson<String>(json['marksInfo']),
      confidence: serializer.fromJson<String>(json['confidence']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'groupKey': serializer.toJson<String>(groupKey),
      'nameBn': serializer.toJson<String>(nameBn),
      'nameEn': serializer.toJson<String>(nameEn),
      'code': serializer.toJson<String>(code),
      'marksInfo': serializer.toJson<String>(marksInfo),
      'confidence': serializer.toJson<String>(confidence),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  Subject copyWith(
          {String? id,
          String? groupKey,
          String? nameBn,
          String? nameEn,
          String? code,
          String? marksInfo,
          String? confidence,
          int? sortOrder}) =>
      Subject(
        id: id ?? this.id,
        groupKey: groupKey ?? this.groupKey,
        nameBn: nameBn ?? this.nameBn,
        nameEn: nameEn ?? this.nameEn,
        code: code ?? this.code,
        marksInfo: marksInfo ?? this.marksInfo,
        confidence: confidence ?? this.confidence,
        sortOrder: sortOrder ?? this.sortOrder,
      );
  Subject copyWithCompanion(SubjectsCompanion data) {
    return Subject(
      id: data.id.present ? data.id.value : this.id,
      groupKey: data.groupKey.present ? data.groupKey.value : this.groupKey,
      nameBn: data.nameBn.present ? data.nameBn.value : this.nameBn,
      nameEn: data.nameEn.present ? data.nameEn.value : this.nameEn,
      code: data.code.present ? data.code.value : this.code,
      marksInfo: data.marksInfo.present ? data.marksInfo.value : this.marksInfo,
      confidence:
          data.confidence.present ? data.confidence.value : this.confidence,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Subject(')
          ..write('id: $id, ')
          ..write('groupKey: $groupKey, ')
          ..write('nameBn: $nameBn, ')
          ..write('nameEn: $nameEn, ')
          ..write('code: $code, ')
          ..write('marksInfo: $marksInfo, ')
          ..write('confidence: $confidence, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, groupKey, nameBn, nameEn, code, marksInfo, confidence, sortOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Subject &&
          other.id == this.id &&
          other.groupKey == this.groupKey &&
          other.nameBn == this.nameBn &&
          other.nameEn == this.nameEn &&
          other.code == this.code &&
          other.marksInfo == this.marksInfo &&
          other.confidence == this.confidence &&
          other.sortOrder == this.sortOrder);
}

class SubjectsCompanion extends UpdateCompanion<Subject> {
  final Value<String> id;
  final Value<String> groupKey;
  final Value<String> nameBn;
  final Value<String> nameEn;
  final Value<String> code;
  final Value<String> marksInfo;
  final Value<String> confidence;
  final Value<int> sortOrder;
  final Value<int> rowid;
  const SubjectsCompanion({
    this.id = const Value.absent(),
    this.groupKey = const Value.absent(),
    this.nameBn = const Value.absent(),
    this.nameEn = const Value.absent(),
    this.code = const Value.absent(),
    this.marksInfo = const Value.absent(),
    this.confidence = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SubjectsCompanion.insert({
    required String id,
    required String groupKey,
    required String nameBn,
    required String nameEn,
    required String code,
    required String marksInfo,
    required String confidence,
    required int sortOrder,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        groupKey = Value(groupKey),
        nameBn = Value(nameBn),
        nameEn = Value(nameEn),
        code = Value(code),
        marksInfo = Value(marksInfo),
        confidence = Value(confidence),
        sortOrder = Value(sortOrder);
  static Insertable<Subject> custom({
    Expression<String>? id,
    Expression<String>? groupKey,
    Expression<String>? nameBn,
    Expression<String>? nameEn,
    Expression<String>? code,
    Expression<String>? marksInfo,
    Expression<String>? confidence,
    Expression<int>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (groupKey != null) 'group_key': groupKey,
      if (nameBn != null) 'name_bn': nameBn,
      if (nameEn != null) 'name_en': nameEn,
      if (code != null) 'code': code,
      if (marksInfo != null) 'marks_info': marksInfo,
      if (confidence != null) 'confidence': confidence,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SubjectsCompanion copyWith(
      {Value<String>? id,
      Value<String>? groupKey,
      Value<String>? nameBn,
      Value<String>? nameEn,
      Value<String>? code,
      Value<String>? marksInfo,
      Value<String>? confidence,
      Value<int>? sortOrder,
      Value<int>? rowid}) {
    return SubjectsCompanion(
      id: id ?? this.id,
      groupKey: groupKey ?? this.groupKey,
      nameBn: nameBn ?? this.nameBn,
      nameEn: nameEn ?? this.nameEn,
      code: code ?? this.code,
      marksInfo: marksInfo ?? this.marksInfo,
      confidence: confidence ?? this.confidence,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (groupKey.present) {
      map['group_key'] = Variable<String>(groupKey.value);
    }
    if (nameBn.present) {
      map['name_bn'] = Variable<String>(nameBn.value);
    }
    if (nameEn.present) {
      map['name_en'] = Variable<String>(nameEn.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (marksInfo.present) {
      map['marks_info'] = Variable<String>(marksInfo.value);
    }
    if (confidence.present) {
      map['confidence'] = Variable<String>(confidence.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubjectsCompanion(')
          ..write('id: $id, ')
          ..write('groupKey: $groupKey, ')
          ..write('nameBn: $nameBn, ')
          ..write('nameEn: $nameEn, ')
          ..write('code: $code, ')
          ..write('marksInfo: $marksInfo, ')
          ..write('confidence: $confidence, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ChaptersTable extends Chapters with TableInfo<$ChaptersTable, Chapter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChaptersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subjectIdMeta =
      const VerificationMeta('subjectId');
  @override
  late final GeneratedColumn<String> subjectId = GeneratedColumn<String>(
      'subject_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderNoMeta =
      const VerificationMeta('orderNo');
  @override
  late final GeneratedColumn<int> orderNo = GeneratedColumn<int>(
      'order_no', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _titleBnMeta =
      const VerificationMeta('titleBn');
  @override
  late final GeneratedColumn<String> titleBn = GeneratedColumn<String>(
      'title_bn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEnMeta =
      const VerificationMeta('titleEn');
  @override
  late final GeneratedColumn<String> titleEn = GeneratedColumn<String>(
      'title_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _inSyllabusMeta =
      const VerificationMeta('inSyllabus');
  @override
  late final GeneratedColumn<bool> inSyllabus = GeneratedColumn<bool>(
      'in_syllabus', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("in_syllabus" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _verifiedMeta =
      const VerificationMeta('verified');
  @override
  late final GeneratedColumn<String> verified = GeneratedColumn<String>(
      'verified', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isCustomMeta =
      const VerificationMeta('isCustom');
  @override
  late final GeneratedColumn<bool> isCustom = GeneratedColumn<bool>(
      'is_custom', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_custom" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        subjectId,
        orderNo,
        titleBn,
        titleEn,
        inSyllabus,
        verified,
        isCustom
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'chapters';
  @override
  VerificationContext validateIntegrity(Insertable<Chapter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('subject_id')) {
      context.handle(_subjectIdMeta,
          subjectId.isAcceptableOrUnknown(data['subject_id']!, _subjectIdMeta));
    } else if (isInserting) {
      context.missing(_subjectIdMeta);
    }
    if (data.containsKey('order_no')) {
      context.handle(_orderNoMeta,
          orderNo.isAcceptableOrUnknown(data['order_no']!, _orderNoMeta));
    } else if (isInserting) {
      context.missing(_orderNoMeta);
    }
    if (data.containsKey('title_bn')) {
      context.handle(_titleBnMeta,
          titleBn.isAcceptableOrUnknown(data['title_bn']!, _titleBnMeta));
    } else if (isInserting) {
      context.missing(_titleBnMeta);
    }
    if (data.containsKey('title_en')) {
      context.handle(_titleEnMeta,
          titleEn.isAcceptableOrUnknown(data['title_en']!, _titleEnMeta));
    } else if (isInserting) {
      context.missing(_titleEnMeta);
    }
    if (data.containsKey('in_syllabus')) {
      context.handle(
          _inSyllabusMeta,
          inSyllabus.isAcceptableOrUnknown(
              data['in_syllabus']!, _inSyllabusMeta));
    }
    if (data.containsKey('verified')) {
      context.handle(_verifiedMeta,
          verified.isAcceptableOrUnknown(data['verified']!, _verifiedMeta));
    } else if (isInserting) {
      context.missing(_verifiedMeta);
    }
    if (data.containsKey('is_custom')) {
      context.handle(_isCustomMeta,
          isCustom.isAcceptableOrUnknown(data['is_custom']!, _isCustomMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Chapter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Chapter(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      subjectId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}subject_id'])!,
      orderNo: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_no'])!,
      titleBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_bn'])!,
      titleEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_en'])!,
      inSyllabus: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}in_syllabus'])!,
      verified: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}verified'])!,
      isCustom: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_custom'])!,
    );
  }

  @override
  $ChaptersTable createAlias(String alias) {
    return $ChaptersTable(attachedDatabase, alias);
  }
}

class Chapter extends DataClass implements Insertable<Chapter> {
  final String id;
  final String subjectId;
  final int orderNo;
  final String titleBn;
  final String titleEn;
  final bool inSyllabus;
  final String verified;
  final bool isCustom;
  const Chapter(
      {required this.id,
      required this.subjectId,
      required this.orderNo,
      required this.titleBn,
      required this.titleEn,
      required this.inSyllabus,
      required this.verified,
      required this.isCustom});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['subject_id'] = Variable<String>(subjectId);
    map['order_no'] = Variable<int>(orderNo);
    map['title_bn'] = Variable<String>(titleBn);
    map['title_en'] = Variable<String>(titleEn);
    map['in_syllabus'] = Variable<bool>(inSyllabus);
    map['verified'] = Variable<String>(verified);
    map['is_custom'] = Variable<bool>(isCustom);
    return map;
  }

  ChaptersCompanion toCompanion(bool nullToAbsent) {
    return ChaptersCompanion(
      id: Value(id),
      subjectId: Value(subjectId),
      orderNo: Value(orderNo),
      titleBn: Value(titleBn),
      titleEn: Value(titleEn),
      inSyllabus: Value(inSyllabus),
      verified: Value(verified),
      isCustom: Value(isCustom),
    );
  }

  factory Chapter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Chapter(
      id: serializer.fromJson<String>(json['id']),
      subjectId: serializer.fromJson<String>(json['subjectId']),
      orderNo: serializer.fromJson<int>(json['orderNo']),
      titleBn: serializer.fromJson<String>(json['titleBn']),
      titleEn: serializer.fromJson<String>(json['titleEn']),
      inSyllabus: serializer.fromJson<bool>(json['inSyllabus']),
      verified: serializer.fromJson<String>(json['verified']),
      isCustom: serializer.fromJson<bool>(json['isCustom']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'subjectId': serializer.toJson<String>(subjectId),
      'orderNo': serializer.toJson<int>(orderNo),
      'titleBn': serializer.toJson<String>(titleBn),
      'titleEn': serializer.toJson<String>(titleEn),
      'inSyllabus': serializer.toJson<bool>(inSyllabus),
      'verified': serializer.toJson<String>(verified),
      'isCustom': serializer.toJson<bool>(isCustom),
    };
  }

  Chapter copyWith(
          {String? id,
          String? subjectId,
          int? orderNo,
          String? titleBn,
          String? titleEn,
          bool? inSyllabus,
          String? verified,
          bool? isCustom}) =>
      Chapter(
        id: id ?? this.id,
        subjectId: subjectId ?? this.subjectId,
        orderNo: orderNo ?? this.orderNo,
        titleBn: titleBn ?? this.titleBn,
        titleEn: titleEn ?? this.titleEn,
        inSyllabus: inSyllabus ?? this.inSyllabus,
        verified: verified ?? this.verified,
        isCustom: isCustom ?? this.isCustom,
      );
  Chapter copyWithCompanion(ChaptersCompanion data) {
    return Chapter(
      id: data.id.present ? data.id.value : this.id,
      subjectId: data.subjectId.present ? data.subjectId.value : this.subjectId,
      orderNo: data.orderNo.present ? data.orderNo.value : this.orderNo,
      titleBn: data.titleBn.present ? data.titleBn.value : this.titleBn,
      titleEn: data.titleEn.present ? data.titleEn.value : this.titleEn,
      inSyllabus:
          data.inSyllabus.present ? data.inSyllabus.value : this.inSyllabus,
      verified: data.verified.present ? data.verified.value : this.verified,
      isCustom: data.isCustom.present ? data.isCustom.value : this.isCustom,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Chapter(')
          ..write('id: $id, ')
          ..write('subjectId: $subjectId, ')
          ..write('orderNo: $orderNo, ')
          ..write('titleBn: $titleBn, ')
          ..write('titleEn: $titleEn, ')
          ..write('inSyllabus: $inSyllabus, ')
          ..write('verified: $verified, ')
          ..write('isCustom: $isCustom')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, subjectId, orderNo, titleBn, titleEn, inSyllabus, verified, isCustom);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Chapter &&
          other.id == this.id &&
          other.subjectId == this.subjectId &&
          other.orderNo == this.orderNo &&
          other.titleBn == this.titleBn &&
          other.titleEn == this.titleEn &&
          other.inSyllabus == this.inSyllabus &&
          other.verified == this.verified &&
          other.isCustom == this.isCustom);
}

class ChaptersCompanion extends UpdateCompanion<Chapter> {
  final Value<String> id;
  final Value<String> subjectId;
  final Value<int> orderNo;
  final Value<String> titleBn;
  final Value<String> titleEn;
  final Value<bool> inSyllabus;
  final Value<String> verified;
  final Value<bool> isCustom;
  final Value<int> rowid;
  const ChaptersCompanion({
    this.id = const Value.absent(),
    this.subjectId = const Value.absent(),
    this.orderNo = const Value.absent(),
    this.titleBn = const Value.absent(),
    this.titleEn = const Value.absent(),
    this.inSyllabus = const Value.absent(),
    this.verified = const Value.absent(),
    this.isCustom = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ChaptersCompanion.insert({
    required String id,
    required String subjectId,
    required int orderNo,
    required String titleBn,
    required String titleEn,
    this.inSyllabus = const Value.absent(),
    required String verified,
    this.isCustom = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        subjectId = Value(subjectId),
        orderNo = Value(orderNo),
        titleBn = Value(titleBn),
        titleEn = Value(titleEn),
        verified = Value(verified);
  static Insertable<Chapter> custom({
    Expression<String>? id,
    Expression<String>? subjectId,
    Expression<int>? orderNo,
    Expression<String>? titleBn,
    Expression<String>? titleEn,
    Expression<bool>? inSyllabus,
    Expression<String>? verified,
    Expression<bool>? isCustom,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (subjectId != null) 'subject_id': subjectId,
      if (orderNo != null) 'order_no': orderNo,
      if (titleBn != null) 'title_bn': titleBn,
      if (titleEn != null) 'title_en': titleEn,
      if (inSyllabus != null) 'in_syllabus': inSyllabus,
      if (verified != null) 'verified': verified,
      if (isCustom != null) 'is_custom': isCustom,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ChaptersCompanion copyWith(
      {Value<String>? id,
      Value<String>? subjectId,
      Value<int>? orderNo,
      Value<String>? titleBn,
      Value<String>? titleEn,
      Value<bool>? inSyllabus,
      Value<String>? verified,
      Value<bool>? isCustom,
      Value<int>? rowid}) {
    return ChaptersCompanion(
      id: id ?? this.id,
      subjectId: subjectId ?? this.subjectId,
      orderNo: orderNo ?? this.orderNo,
      titleBn: titleBn ?? this.titleBn,
      titleEn: titleEn ?? this.titleEn,
      inSyllabus: inSyllabus ?? this.inSyllabus,
      verified: verified ?? this.verified,
      isCustom: isCustom ?? this.isCustom,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (subjectId.present) {
      map['subject_id'] = Variable<String>(subjectId.value);
    }
    if (orderNo.present) {
      map['order_no'] = Variable<int>(orderNo.value);
    }
    if (titleBn.present) {
      map['title_bn'] = Variable<String>(titleBn.value);
    }
    if (titleEn.present) {
      map['title_en'] = Variable<String>(titleEn.value);
    }
    if (inSyllabus.present) {
      map['in_syllabus'] = Variable<bool>(inSyllabus.value);
    }
    if (verified.present) {
      map['verified'] = Variable<String>(verified.value);
    }
    if (isCustom.present) {
      map['is_custom'] = Variable<bool>(isCustom.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChaptersCompanion(')
          ..write('id: $id, ')
          ..write('subjectId: $subjectId, ')
          ..write('orderNo: $orderNo, ')
          ..write('titleBn: $titleBn, ')
          ..write('titleEn: $titleEn, ')
          ..write('inSyllabus: $inSyllabus, ')
          ..write('verified: $verified, ')
          ..write('isCustom: $isCustom, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TopicsTable extends Topics with TableInfo<$TopicsTable, Topic> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TopicsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _chapterIdMeta =
      const VerificationMeta('chapterId');
  @override
  late final GeneratedColumn<String> chapterId = GeneratedColumn<String>(
      'chapter_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderNoMeta =
      const VerificationMeta('orderNo');
  @override
  late final GeneratedColumn<int> orderNo = GeneratedColumn<int>(
      'order_no', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _titleBnMeta =
      const VerificationMeta('titleBn');
  @override
  late final GeneratedColumn<String> titleBn = GeneratedColumn<String>(
      'title_bn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleEnMeta =
      const VerificationMeta('titleEn');
  @override
  late final GeneratedColumn<String> titleEn = GeneratedColumn<String>(
      'title_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isDoneMeta = const VerificationMeta('isDone');
  @override
  late final GeneratedColumn<bool> isDone = GeneratedColumn<bool>(
      'is_done', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_done" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _doneAtMeta = const VerificationMeta('doneAt');
  @override
  late final GeneratedColumn<DateTime> doneAt = GeneratedColumn<DateTime>(
      'done_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isWeakMeta = const VerificationMeta('isWeak');
  @override
  late final GeneratedColumn<bool> isWeak = GeneratedColumn<bool>(
      'is_weak', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_weak" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _revisionCountMeta =
      const VerificationMeta('revisionCount');
  @override
  late final GeneratedColumn<int> revisionCount = GeneratedColumn<int>(
      'revision_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _isCustomMeta =
      const VerificationMeta('isCustom');
  @override
  late final GeneratedColumn<bool> isCustom = GeneratedColumn<bool>(
      'is_custom', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_custom" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        chapterId,
        orderNo,
        titleBn,
        titleEn,
        isDone,
        doneAt,
        note,
        isWeak,
        revisionCount,
        isCustom
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'topics';
  @override
  VerificationContext validateIntegrity(Insertable<Topic> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('chapter_id')) {
      context.handle(_chapterIdMeta,
          chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta));
    } else if (isInserting) {
      context.missing(_chapterIdMeta);
    }
    if (data.containsKey('order_no')) {
      context.handle(_orderNoMeta,
          orderNo.isAcceptableOrUnknown(data['order_no']!, _orderNoMeta));
    } else if (isInserting) {
      context.missing(_orderNoMeta);
    }
    if (data.containsKey('title_bn')) {
      context.handle(_titleBnMeta,
          titleBn.isAcceptableOrUnknown(data['title_bn']!, _titleBnMeta));
    } else if (isInserting) {
      context.missing(_titleBnMeta);
    }
    if (data.containsKey('title_en')) {
      context.handle(_titleEnMeta,
          titleEn.isAcceptableOrUnknown(data['title_en']!, _titleEnMeta));
    } else if (isInserting) {
      context.missing(_titleEnMeta);
    }
    if (data.containsKey('is_done')) {
      context.handle(_isDoneMeta,
          isDone.isAcceptableOrUnknown(data['is_done']!, _isDoneMeta));
    }
    if (data.containsKey('done_at')) {
      context.handle(_doneAtMeta,
          doneAt.isAcceptableOrUnknown(data['done_at']!, _doneAtMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('is_weak')) {
      context.handle(_isWeakMeta,
          isWeak.isAcceptableOrUnknown(data['is_weak']!, _isWeakMeta));
    }
    if (data.containsKey('revision_count')) {
      context.handle(
          _revisionCountMeta,
          revisionCount.isAcceptableOrUnknown(
              data['revision_count']!, _revisionCountMeta));
    }
    if (data.containsKey('is_custom')) {
      context.handle(_isCustomMeta,
          isCustom.isAcceptableOrUnknown(data['is_custom']!, _isCustomMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Topic map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Topic(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      chapterId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}chapter_id'])!,
      orderNo: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_no'])!,
      titleBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_bn'])!,
      titleEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_en'])!,
      isDone: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_done'])!,
      doneAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}done_at']),
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
      isWeak: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_weak'])!,
      revisionCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}revision_count'])!,
      isCustom: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_custom'])!,
    );
  }

  @override
  $TopicsTable createAlias(String alias) {
    return $TopicsTable(attachedDatabase, alias);
  }
}

class Topic extends DataClass implements Insertable<Topic> {
  final String id;
  final String chapterId;
  final int orderNo;
  final String titleBn;
  final String titleEn;
  final bool isDone;
  final DateTime? doneAt;
  final String? note;
  final bool isWeak;
  final int revisionCount;
  final bool isCustom;
  const Topic(
      {required this.id,
      required this.chapterId,
      required this.orderNo,
      required this.titleBn,
      required this.titleEn,
      required this.isDone,
      this.doneAt,
      this.note,
      required this.isWeak,
      required this.revisionCount,
      required this.isCustom});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['chapter_id'] = Variable<String>(chapterId);
    map['order_no'] = Variable<int>(orderNo);
    map['title_bn'] = Variable<String>(titleBn);
    map['title_en'] = Variable<String>(titleEn);
    map['is_done'] = Variable<bool>(isDone);
    if (!nullToAbsent || doneAt != null) {
      map['done_at'] = Variable<DateTime>(doneAt);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    map['is_weak'] = Variable<bool>(isWeak);
    map['revision_count'] = Variable<int>(revisionCount);
    map['is_custom'] = Variable<bool>(isCustom);
    return map;
  }

  TopicsCompanion toCompanion(bool nullToAbsent) {
    return TopicsCompanion(
      id: Value(id),
      chapterId: Value(chapterId),
      orderNo: Value(orderNo),
      titleBn: Value(titleBn),
      titleEn: Value(titleEn),
      isDone: Value(isDone),
      doneAt:
          doneAt == null && nullToAbsent ? const Value.absent() : Value(doneAt),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      isWeak: Value(isWeak),
      revisionCount: Value(revisionCount),
      isCustom: Value(isCustom),
    );
  }

  factory Topic.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Topic(
      id: serializer.fromJson<String>(json['id']),
      chapterId: serializer.fromJson<String>(json['chapterId']),
      orderNo: serializer.fromJson<int>(json['orderNo']),
      titleBn: serializer.fromJson<String>(json['titleBn']),
      titleEn: serializer.fromJson<String>(json['titleEn']),
      isDone: serializer.fromJson<bool>(json['isDone']),
      doneAt: serializer.fromJson<DateTime?>(json['doneAt']),
      note: serializer.fromJson<String?>(json['note']),
      isWeak: serializer.fromJson<bool>(json['isWeak']),
      revisionCount: serializer.fromJson<int>(json['revisionCount']),
      isCustom: serializer.fromJson<bool>(json['isCustom']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'chapterId': serializer.toJson<String>(chapterId),
      'orderNo': serializer.toJson<int>(orderNo),
      'titleBn': serializer.toJson<String>(titleBn),
      'titleEn': serializer.toJson<String>(titleEn),
      'isDone': serializer.toJson<bool>(isDone),
      'doneAt': serializer.toJson<DateTime?>(doneAt),
      'note': serializer.toJson<String?>(note),
      'isWeak': serializer.toJson<bool>(isWeak),
      'revisionCount': serializer.toJson<int>(revisionCount),
      'isCustom': serializer.toJson<bool>(isCustom),
    };
  }

  Topic copyWith(
          {String? id,
          String? chapterId,
          int? orderNo,
          String? titleBn,
          String? titleEn,
          bool? isDone,
          Value<DateTime?> doneAt = const Value.absent(),
          Value<String?> note = const Value.absent(),
          bool? isWeak,
          int? revisionCount,
          bool? isCustom}) =>
      Topic(
        id: id ?? this.id,
        chapterId: chapterId ?? this.chapterId,
        orderNo: orderNo ?? this.orderNo,
        titleBn: titleBn ?? this.titleBn,
        titleEn: titleEn ?? this.titleEn,
        isDone: isDone ?? this.isDone,
        doneAt: doneAt.present ? doneAt.value : this.doneAt,
        note: note.present ? note.value : this.note,
        isWeak: isWeak ?? this.isWeak,
        revisionCount: revisionCount ?? this.revisionCount,
        isCustom: isCustom ?? this.isCustom,
      );
  Topic copyWithCompanion(TopicsCompanion data) {
    return Topic(
      id: data.id.present ? data.id.value : this.id,
      chapterId: data.chapterId.present ? data.chapterId.value : this.chapterId,
      orderNo: data.orderNo.present ? data.orderNo.value : this.orderNo,
      titleBn: data.titleBn.present ? data.titleBn.value : this.titleBn,
      titleEn: data.titleEn.present ? data.titleEn.value : this.titleEn,
      isDone: data.isDone.present ? data.isDone.value : this.isDone,
      doneAt: data.doneAt.present ? data.doneAt.value : this.doneAt,
      note: data.note.present ? data.note.value : this.note,
      isWeak: data.isWeak.present ? data.isWeak.value : this.isWeak,
      revisionCount: data.revisionCount.present
          ? data.revisionCount.value
          : this.revisionCount,
      isCustom: data.isCustom.present ? data.isCustom.value : this.isCustom,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Topic(')
          ..write('id: $id, ')
          ..write('chapterId: $chapterId, ')
          ..write('orderNo: $orderNo, ')
          ..write('titleBn: $titleBn, ')
          ..write('titleEn: $titleEn, ')
          ..write('isDone: $isDone, ')
          ..write('doneAt: $doneAt, ')
          ..write('note: $note, ')
          ..write('isWeak: $isWeak, ')
          ..write('revisionCount: $revisionCount, ')
          ..write('isCustom: $isCustom')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, chapterId, orderNo, titleBn, titleEn,
      isDone, doneAt, note, isWeak, revisionCount, isCustom);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Topic &&
          other.id == this.id &&
          other.chapterId == this.chapterId &&
          other.orderNo == this.orderNo &&
          other.titleBn == this.titleBn &&
          other.titleEn == this.titleEn &&
          other.isDone == this.isDone &&
          other.doneAt == this.doneAt &&
          other.note == this.note &&
          other.isWeak == this.isWeak &&
          other.revisionCount == this.revisionCount &&
          other.isCustom == this.isCustom);
}

class TopicsCompanion extends UpdateCompanion<Topic> {
  final Value<String> id;
  final Value<String> chapterId;
  final Value<int> orderNo;
  final Value<String> titleBn;
  final Value<String> titleEn;
  final Value<bool> isDone;
  final Value<DateTime?> doneAt;
  final Value<String?> note;
  final Value<bool> isWeak;
  final Value<int> revisionCount;
  final Value<bool> isCustom;
  final Value<int> rowid;
  const TopicsCompanion({
    this.id = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.orderNo = const Value.absent(),
    this.titleBn = const Value.absent(),
    this.titleEn = const Value.absent(),
    this.isDone = const Value.absent(),
    this.doneAt = const Value.absent(),
    this.note = const Value.absent(),
    this.isWeak = const Value.absent(),
    this.revisionCount = const Value.absent(),
    this.isCustom = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TopicsCompanion.insert({
    required String id,
    required String chapterId,
    required int orderNo,
    required String titleBn,
    required String titleEn,
    this.isDone = const Value.absent(),
    this.doneAt = const Value.absent(),
    this.note = const Value.absent(),
    this.isWeak = const Value.absent(),
    this.revisionCount = const Value.absent(),
    this.isCustom = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        chapterId = Value(chapterId),
        orderNo = Value(orderNo),
        titleBn = Value(titleBn),
        titleEn = Value(titleEn);
  static Insertable<Topic> custom({
    Expression<String>? id,
    Expression<String>? chapterId,
    Expression<int>? orderNo,
    Expression<String>? titleBn,
    Expression<String>? titleEn,
    Expression<bool>? isDone,
    Expression<DateTime>? doneAt,
    Expression<String>? note,
    Expression<bool>? isWeak,
    Expression<int>? revisionCount,
    Expression<bool>? isCustom,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (chapterId != null) 'chapter_id': chapterId,
      if (orderNo != null) 'order_no': orderNo,
      if (titleBn != null) 'title_bn': titleBn,
      if (titleEn != null) 'title_en': titleEn,
      if (isDone != null) 'is_done': isDone,
      if (doneAt != null) 'done_at': doneAt,
      if (note != null) 'note': note,
      if (isWeak != null) 'is_weak': isWeak,
      if (revisionCount != null) 'revision_count': revisionCount,
      if (isCustom != null) 'is_custom': isCustom,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TopicsCompanion copyWith(
      {Value<String>? id,
      Value<String>? chapterId,
      Value<int>? orderNo,
      Value<String>? titleBn,
      Value<String>? titleEn,
      Value<bool>? isDone,
      Value<DateTime?>? doneAt,
      Value<String?>? note,
      Value<bool>? isWeak,
      Value<int>? revisionCount,
      Value<bool>? isCustom,
      Value<int>? rowid}) {
    return TopicsCompanion(
      id: id ?? this.id,
      chapterId: chapterId ?? this.chapterId,
      orderNo: orderNo ?? this.orderNo,
      titleBn: titleBn ?? this.titleBn,
      titleEn: titleEn ?? this.titleEn,
      isDone: isDone ?? this.isDone,
      doneAt: doneAt ?? this.doneAt,
      note: note ?? this.note,
      isWeak: isWeak ?? this.isWeak,
      revisionCount: revisionCount ?? this.revisionCount,
      isCustom: isCustom ?? this.isCustom,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<String>(chapterId.value);
    }
    if (orderNo.present) {
      map['order_no'] = Variable<int>(orderNo.value);
    }
    if (titleBn.present) {
      map['title_bn'] = Variable<String>(titleBn.value);
    }
    if (titleEn.present) {
      map['title_en'] = Variable<String>(titleEn.value);
    }
    if (isDone.present) {
      map['is_done'] = Variable<bool>(isDone.value);
    }
    if (doneAt.present) {
      map['done_at'] = Variable<DateTime>(doneAt.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (isWeak.present) {
      map['is_weak'] = Variable<bool>(isWeak.value);
    }
    if (revisionCount.present) {
      map['revision_count'] = Variable<int>(revisionCount.value);
    }
    if (isCustom.present) {
      map['is_custom'] = Variable<bool>(isCustom.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TopicsCompanion(')
          ..write('id: $id, ')
          ..write('chapterId: $chapterId, ')
          ..write('orderNo: $orderNo, ')
          ..write('titleBn: $titleBn, ')
          ..write('titleEn: $titleEn, ')
          ..write('isDone: $isDone, ')
          ..write('doneAt: $doneAt, ')
          ..write('note: $note, ')
          ..write('isWeak: $isWeak, ')
          ..write('revisionCount: $revisionCount, ')
          ..write('isCustom: $isCustom, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserProfilesTable extends UserProfiles
    with TableInfo<$UserProfilesTable, UserProfile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserProfilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _groupKeyMeta =
      const VerificationMeta('groupKey');
  @override
  late final GeneratedColumn<String> groupKey = GeneratedColumn<String>(
      'group_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _languageMeta =
      const VerificationMeta('language');
  @override
  late final GeneratedColumn<String> language = GeneratedColumn<String>(
      'language', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _examDateMeta =
      const VerificationMeta('examDate');
  @override
  late final GeneratedColumn<DateTime> examDate = GeneratedColumn<DateTime>(
      'exam_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _weekStartDayMeta =
      const VerificationMeta('weekStartDay');
  @override
  late final GeneratedColumn<String> weekStartDay = GeneratedColumn<String>(
      'week_start_day', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('Saturday'));
  static const VerificationMeta _bnDigitsMeta =
      const VerificationMeta('bnDigits');
  @override
  late final GeneratedColumn<bool> bnDigits = GeneratedColumn<bool>(
      'bn_digits', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("bn_digits" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns =>
      [id, groupKey, language, examDate, weekStartDay, bnDigits];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_profiles';
  @override
  VerificationContext validateIntegrity(Insertable<UserProfile> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('group_key')) {
      context.handle(_groupKeyMeta,
          groupKey.isAcceptableOrUnknown(data['group_key']!, _groupKeyMeta));
    } else if (isInserting) {
      context.missing(_groupKeyMeta);
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language']!, _languageMeta));
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    if (data.containsKey('exam_date')) {
      context.handle(_examDateMeta,
          examDate.isAcceptableOrUnknown(data['exam_date']!, _examDateMeta));
    } else if (isInserting) {
      context.missing(_examDateMeta);
    }
    if (data.containsKey('week_start_day')) {
      context.handle(
          _weekStartDayMeta,
          weekStartDay.isAcceptableOrUnknown(
              data['week_start_day']!, _weekStartDayMeta));
    }
    if (data.containsKey('bn_digits')) {
      context.handle(_bnDigitsMeta,
          bnDigits.isAcceptableOrUnknown(data['bn_digits']!, _bnDigitsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserProfile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserProfile(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      groupKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group_key'])!,
      language: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}language'])!,
      examDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}exam_date'])!,
      weekStartDay: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}week_start_day'])!,
      bnDigits: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}bn_digits'])!,
    );
  }

  @override
  $UserProfilesTable createAlias(String alias) {
    return $UserProfilesTable(attachedDatabase, alias);
  }
}

class UserProfile extends DataClass implements Insertable<UserProfile> {
  final String id;
  final String groupKey;
  final String language;
  final DateTime examDate;
  final String weekStartDay;
  final bool bnDigits;
  const UserProfile(
      {required this.id,
      required this.groupKey,
      required this.language,
      required this.examDate,
      required this.weekStartDay,
      required this.bnDigits});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['group_key'] = Variable<String>(groupKey);
    map['language'] = Variable<String>(language);
    map['exam_date'] = Variable<DateTime>(examDate);
    map['week_start_day'] = Variable<String>(weekStartDay);
    map['bn_digits'] = Variable<bool>(bnDigits);
    return map;
  }

  UserProfilesCompanion toCompanion(bool nullToAbsent) {
    return UserProfilesCompanion(
      id: Value(id),
      groupKey: Value(groupKey),
      language: Value(language),
      examDate: Value(examDate),
      weekStartDay: Value(weekStartDay),
      bnDigits: Value(bnDigits),
    );
  }

  factory UserProfile.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserProfile(
      id: serializer.fromJson<String>(json['id']),
      groupKey: serializer.fromJson<String>(json['groupKey']),
      language: serializer.fromJson<String>(json['language']),
      examDate: serializer.fromJson<DateTime>(json['examDate']),
      weekStartDay: serializer.fromJson<String>(json['weekStartDay']),
      bnDigits: serializer.fromJson<bool>(json['bnDigits']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'groupKey': serializer.toJson<String>(groupKey),
      'language': serializer.toJson<String>(language),
      'examDate': serializer.toJson<DateTime>(examDate),
      'weekStartDay': serializer.toJson<String>(weekStartDay),
      'bnDigits': serializer.toJson<bool>(bnDigits),
    };
  }

  UserProfile copyWith(
          {String? id,
          String? groupKey,
          String? language,
          DateTime? examDate,
          String? weekStartDay,
          bool? bnDigits}) =>
      UserProfile(
        id: id ?? this.id,
        groupKey: groupKey ?? this.groupKey,
        language: language ?? this.language,
        examDate: examDate ?? this.examDate,
        weekStartDay: weekStartDay ?? this.weekStartDay,
        bnDigits: bnDigits ?? this.bnDigits,
      );
  UserProfile copyWithCompanion(UserProfilesCompanion data) {
    return UserProfile(
      id: data.id.present ? data.id.value : this.id,
      groupKey: data.groupKey.present ? data.groupKey.value : this.groupKey,
      language: data.language.present ? data.language.value : this.language,
      examDate: data.examDate.present ? data.examDate.value : this.examDate,
      weekStartDay: data.weekStartDay.present
          ? data.weekStartDay.value
          : this.weekStartDay,
      bnDigits: data.bnDigits.present ? data.bnDigits.value : this.bnDigits,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserProfile(')
          ..write('id: $id, ')
          ..write('groupKey: $groupKey, ')
          ..write('language: $language, ')
          ..write('examDate: $examDate, ')
          ..write('weekStartDay: $weekStartDay, ')
          ..write('bnDigits: $bnDigits')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, groupKey, language, examDate, weekStartDay, bnDigits);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserProfile &&
          other.id == this.id &&
          other.groupKey == this.groupKey &&
          other.language == this.language &&
          other.examDate == this.examDate &&
          other.weekStartDay == this.weekStartDay &&
          other.bnDigits == this.bnDigits);
}

class UserProfilesCompanion extends UpdateCompanion<UserProfile> {
  final Value<String> id;
  final Value<String> groupKey;
  final Value<String> language;
  final Value<DateTime> examDate;
  final Value<String> weekStartDay;
  final Value<bool> bnDigits;
  final Value<int> rowid;
  const UserProfilesCompanion({
    this.id = const Value.absent(),
    this.groupKey = const Value.absent(),
    this.language = const Value.absent(),
    this.examDate = const Value.absent(),
    this.weekStartDay = const Value.absent(),
    this.bnDigits = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserProfilesCompanion.insert({
    required String id,
    required String groupKey,
    required String language,
    required DateTime examDate,
    this.weekStartDay = const Value.absent(),
    this.bnDigits = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        groupKey = Value(groupKey),
        language = Value(language),
        examDate = Value(examDate);
  static Insertable<UserProfile> custom({
    Expression<String>? id,
    Expression<String>? groupKey,
    Expression<String>? language,
    Expression<DateTime>? examDate,
    Expression<String>? weekStartDay,
    Expression<bool>? bnDigits,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (groupKey != null) 'group_key': groupKey,
      if (language != null) 'language': language,
      if (examDate != null) 'exam_date': examDate,
      if (weekStartDay != null) 'week_start_day': weekStartDay,
      if (bnDigits != null) 'bn_digits': bnDigits,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserProfilesCompanion copyWith(
      {Value<String>? id,
      Value<String>? groupKey,
      Value<String>? language,
      Value<DateTime>? examDate,
      Value<String>? weekStartDay,
      Value<bool>? bnDigits,
      Value<int>? rowid}) {
    return UserProfilesCompanion(
      id: id ?? this.id,
      groupKey: groupKey ?? this.groupKey,
      language: language ?? this.language,
      examDate: examDate ?? this.examDate,
      weekStartDay: weekStartDay ?? this.weekStartDay,
      bnDigits: bnDigits ?? this.bnDigits,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (groupKey.present) {
      map['group_key'] = Variable<String>(groupKey.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (examDate.present) {
      map['exam_date'] = Variable<DateTime>(examDate.value);
    }
    if (weekStartDay.present) {
      map['week_start_day'] = Variable<String>(weekStartDay.value);
    }
    if (bnDigits.present) {
      map['bn_digits'] = Variable<bool>(bnDigits.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserProfilesCompanion(')
          ..write('id: $id, ')
          ..write('groupKey: $groupKey, ')
          ..write('language: $language, ')
          ..write('examDate: $examDate, ')
          ..write('weekStartDay: $weekStartDay, ')
          ..write('bnDigits: $bnDigits, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StudySessionsTable extends StudySessions
    with TableInfo<$StudySessionsTable, StudySession> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StudySessionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subjectIdMeta =
      const VerificationMeta('subjectId');
  @override
  late final GeneratedColumn<String> subjectId = GeneratedColumn<String>(
      'subject_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _chapterIdMeta =
      const VerificationMeta('chapterId');
  @override
  late final GeneratedColumn<String> chapterId = GeneratedColumn<String>(
      'chapter_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _startAtMeta =
      const VerificationMeta('startAt');
  @override
  late final GeneratedColumn<DateTime> startAt = GeneratedColumn<DateTime>(
      'start_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _endAtMeta = const VerificationMeta('endAt');
  @override
  late final GeneratedColumn<DateTime> endAt = GeneratedColumn<DateTime>(
      'end_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _durationSecMeta =
      const VerificationMeta('durationSec');
  @override
  late final GeneratedColumn<int> durationSec = GeneratedColumn<int>(
      'duration_sec', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _modeMeta = const VerificationMeta('mode');
  @override
  late final GeneratedColumn<String> mode = GeneratedColumn<String>(
      'mode', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, subjectId, chapterId, startAt, endAt, durationSec, mode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'study_sessions';
  @override
  VerificationContext validateIntegrity(Insertable<StudySession> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('subject_id')) {
      context.handle(_subjectIdMeta,
          subjectId.isAcceptableOrUnknown(data['subject_id']!, _subjectIdMeta));
    }
    if (data.containsKey('chapter_id')) {
      context.handle(_chapterIdMeta,
          chapterId.isAcceptableOrUnknown(data['chapter_id']!, _chapterIdMeta));
    }
    if (data.containsKey('start_at')) {
      context.handle(_startAtMeta,
          startAt.isAcceptableOrUnknown(data['start_at']!, _startAtMeta));
    } else if (isInserting) {
      context.missing(_startAtMeta);
    }
    if (data.containsKey('end_at')) {
      context.handle(
          _endAtMeta, endAt.isAcceptableOrUnknown(data['end_at']!, _endAtMeta));
    } else if (isInserting) {
      context.missing(_endAtMeta);
    }
    if (data.containsKey('duration_sec')) {
      context.handle(
          _durationSecMeta,
          durationSec.isAcceptableOrUnknown(
              data['duration_sec']!, _durationSecMeta));
    } else if (isInserting) {
      context.missing(_durationSecMeta);
    }
    if (data.containsKey('mode')) {
      context.handle(
          _modeMeta, mode.isAcceptableOrUnknown(data['mode']!, _modeMeta));
    } else if (isInserting) {
      context.missing(_modeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StudySession map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StudySession(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      subjectId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}subject_id']),
      chapterId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}chapter_id']),
      startAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_at'])!,
      endAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_at'])!,
      durationSec: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}duration_sec'])!,
      mode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mode'])!,
    );
  }

  @override
  $StudySessionsTable createAlias(String alias) {
    return $StudySessionsTable(attachedDatabase, alias);
  }
}

class StudySession extends DataClass implements Insertable<StudySession> {
  final String id;
  final String? subjectId;
  final String? chapterId;
  final DateTime startAt;
  final DateTime endAt;
  final int durationSec;
  final String mode;
  const StudySession(
      {required this.id,
      this.subjectId,
      this.chapterId,
      required this.startAt,
      required this.endAt,
      required this.durationSec,
      required this.mode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || subjectId != null) {
      map['subject_id'] = Variable<String>(subjectId);
    }
    if (!nullToAbsent || chapterId != null) {
      map['chapter_id'] = Variable<String>(chapterId);
    }
    map['start_at'] = Variable<DateTime>(startAt);
    map['end_at'] = Variable<DateTime>(endAt);
    map['duration_sec'] = Variable<int>(durationSec);
    map['mode'] = Variable<String>(mode);
    return map;
  }

  StudySessionsCompanion toCompanion(bool nullToAbsent) {
    return StudySessionsCompanion(
      id: Value(id),
      subjectId: subjectId == null && nullToAbsent
          ? const Value.absent()
          : Value(subjectId),
      chapterId: chapterId == null && nullToAbsent
          ? const Value.absent()
          : Value(chapterId),
      startAt: Value(startAt),
      endAt: Value(endAt),
      durationSec: Value(durationSec),
      mode: Value(mode),
    );
  }

  factory StudySession.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StudySession(
      id: serializer.fromJson<String>(json['id']),
      subjectId: serializer.fromJson<String?>(json['subjectId']),
      chapterId: serializer.fromJson<String?>(json['chapterId']),
      startAt: serializer.fromJson<DateTime>(json['startAt']),
      endAt: serializer.fromJson<DateTime>(json['endAt']),
      durationSec: serializer.fromJson<int>(json['durationSec']),
      mode: serializer.fromJson<String>(json['mode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'subjectId': serializer.toJson<String?>(subjectId),
      'chapterId': serializer.toJson<String?>(chapterId),
      'startAt': serializer.toJson<DateTime>(startAt),
      'endAt': serializer.toJson<DateTime>(endAt),
      'durationSec': serializer.toJson<int>(durationSec),
      'mode': serializer.toJson<String>(mode),
    };
  }

  StudySession copyWith(
          {String? id,
          Value<String?> subjectId = const Value.absent(),
          Value<String?> chapterId = const Value.absent(),
          DateTime? startAt,
          DateTime? endAt,
          int? durationSec,
          String? mode}) =>
      StudySession(
        id: id ?? this.id,
        subjectId: subjectId.present ? subjectId.value : this.subjectId,
        chapterId: chapterId.present ? chapterId.value : this.chapterId,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        durationSec: durationSec ?? this.durationSec,
        mode: mode ?? this.mode,
      );
  StudySession copyWithCompanion(StudySessionsCompanion data) {
    return StudySession(
      id: data.id.present ? data.id.value : this.id,
      subjectId: data.subjectId.present ? data.subjectId.value : this.subjectId,
      chapterId: data.chapterId.present ? data.chapterId.value : this.chapterId,
      startAt: data.startAt.present ? data.startAt.value : this.startAt,
      endAt: data.endAt.present ? data.endAt.value : this.endAt,
      durationSec:
          data.durationSec.present ? data.durationSec.value : this.durationSec,
      mode: data.mode.present ? data.mode.value : this.mode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StudySession(')
          ..write('id: $id, ')
          ..write('subjectId: $subjectId, ')
          ..write('chapterId: $chapterId, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt, ')
          ..write('durationSec: $durationSec, ')
          ..write('mode: $mode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, subjectId, chapterId, startAt, endAt, durationSec, mode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StudySession &&
          other.id == this.id &&
          other.subjectId == this.subjectId &&
          other.chapterId == this.chapterId &&
          other.startAt == this.startAt &&
          other.endAt == this.endAt &&
          other.durationSec == this.durationSec &&
          other.mode == this.mode);
}

class StudySessionsCompanion extends UpdateCompanion<StudySession> {
  final Value<String> id;
  final Value<String?> subjectId;
  final Value<String?> chapterId;
  final Value<DateTime> startAt;
  final Value<DateTime> endAt;
  final Value<int> durationSec;
  final Value<String> mode;
  final Value<int> rowid;
  const StudySessionsCompanion({
    this.id = const Value.absent(),
    this.subjectId = const Value.absent(),
    this.chapterId = const Value.absent(),
    this.startAt = const Value.absent(),
    this.endAt = const Value.absent(),
    this.durationSec = const Value.absent(),
    this.mode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StudySessionsCompanion.insert({
    required String id,
    this.subjectId = const Value.absent(),
    this.chapterId = const Value.absent(),
    required DateTime startAt,
    required DateTime endAt,
    required int durationSec,
    required String mode,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        startAt = Value(startAt),
        endAt = Value(endAt),
        durationSec = Value(durationSec),
        mode = Value(mode);
  static Insertable<StudySession> custom({
    Expression<String>? id,
    Expression<String>? subjectId,
    Expression<String>? chapterId,
    Expression<DateTime>? startAt,
    Expression<DateTime>? endAt,
    Expression<int>? durationSec,
    Expression<String>? mode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (subjectId != null) 'subject_id': subjectId,
      if (chapterId != null) 'chapter_id': chapterId,
      if (startAt != null) 'start_at': startAt,
      if (endAt != null) 'end_at': endAt,
      if (durationSec != null) 'duration_sec': durationSec,
      if (mode != null) 'mode': mode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StudySessionsCompanion copyWith(
      {Value<String>? id,
      Value<String?>? subjectId,
      Value<String?>? chapterId,
      Value<DateTime>? startAt,
      Value<DateTime>? endAt,
      Value<int>? durationSec,
      Value<String>? mode,
      Value<int>? rowid}) {
    return StudySessionsCompanion(
      id: id ?? this.id,
      subjectId: subjectId ?? this.subjectId,
      chapterId: chapterId ?? this.chapterId,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      durationSec: durationSec ?? this.durationSec,
      mode: mode ?? this.mode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (subjectId.present) {
      map['subject_id'] = Variable<String>(subjectId.value);
    }
    if (chapterId.present) {
      map['chapter_id'] = Variable<String>(chapterId.value);
    }
    if (startAt.present) {
      map['start_at'] = Variable<DateTime>(startAt.value);
    }
    if (endAt.present) {
      map['end_at'] = Variable<DateTime>(endAt.value);
    }
    if (durationSec.present) {
      map['duration_sec'] = Variable<int>(durationSec.value);
    }
    if (mode.present) {
      map['mode'] = Variable<String>(mode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudySessionsCompanion(')
          ..write('id: $id, ')
          ..write('subjectId: $subjectId, ')
          ..write('chapterId: $chapterId, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt, ')
          ..write('durationSec: $durationSec, ')
          ..write('mode: $mode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SubjectsTable subjects = $SubjectsTable(this);
  late final $ChaptersTable chapters = $ChaptersTable(this);
  late final $TopicsTable topics = $TopicsTable(this);
  late final $UserProfilesTable userProfiles = $UserProfilesTable(this);
  late final $StudySessionsTable studySessions = $StudySessionsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [subjects, chapters, topics, userProfiles, studySessions];
}

typedef $$SubjectsTableCreateCompanionBuilder = SubjectsCompanion Function({
  required String id,
  required String groupKey,
  required String nameBn,
  required String nameEn,
  required String code,
  required String marksInfo,
  required String confidence,
  required int sortOrder,
  Value<int> rowid,
});
typedef $$SubjectsTableUpdateCompanionBuilder = SubjectsCompanion Function({
  Value<String> id,
  Value<String> groupKey,
  Value<String> nameBn,
  Value<String> nameEn,
  Value<String> code,
  Value<String> marksInfo,
  Value<String> confidence,
  Value<int> sortOrder,
  Value<int> rowid,
});

class $$SubjectsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SubjectsTable,
    Subject,
    $$SubjectsTableFilterComposer,
    $$SubjectsTableOrderingComposer,
    $$SubjectsTableCreateCompanionBuilder,
    $$SubjectsTableUpdateCompanionBuilder> {
  $$SubjectsTableTableManager(_$AppDatabase db, $SubjectsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SubjectsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SubjectsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> groupKey = const Value.absent(),
            Value<String> nameBn = const Value.absent(),
            Value<String> nameEn = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<String> marksInfo = const Value.absent(),
            Value<String> confidence = const Value.absent(),
            Value<int> sortOrder = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SubjectsCompanion(
            id: id,
            groupKey: groupKey,
            nameBn: nameBn,
            nameEn: nameEn,
            code: code,
            marksInfo: marksInfo,
            confidence: confidence,
            sortOrder: sortOrder,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String groupKey,
            required String nameBn,
            required String nameEn,
            required String code,
            required String marksInfo,
            required String confidence,
            required int sortOrder,
            Value<int> rowid = const Value.absent(),
          }) =>
              SubjectsCompanion.insert(
            id: id,
            groupKey: groupKey,
            nameBn: nameBn,
            nameEn: nameEn,
            code: code,
            marksInfo: marksInfo,
            confidence: confidence,
            sortOrder: sortOrder,
            rowid: rowid,
          ),
        ));
}

class $$SubjectsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SubjectsTable> {
  $$SubjectsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get groupKey => $state.composableBuilder(
      column: $state.table.groupKey,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nameBn => $state.composableBuilder(
      column: $state.table.nameBn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nameEn => $state.composableBuilder(
      column: $state.table.nameEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get code => $state.composableBuilder(
      column: $state.table.code,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get marksInfo => $state.composableBuilder(
      column: $state.table.marksInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get confidence => $state.composableBuilder(
      column: $state.table.confidence,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get sortOrder => $state.composableBuilder(
      column: $state.table.sortOrder,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SubjectsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SubjectsTable> {
  $$SubjectsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get groupKey => $state.composableBuilder(
      column: $state.table.groupKey,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nameBn => $state.composableBuilder(
      column: $state.table.nameBn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nameEn => $state.composableBuilder(
      column: $state.table.nameEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get code => $state.composableBuilder(
      column: $state.table.code,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get marksInfo => $state.composableBuilder(
      column: $state.table.marksInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get confidence => $state.composableBuilder(
      column: $state.table.confidence,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get sortOrder => $state.composableBuilder(
      column: $state.table.sortOrder,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$ChaptersTableCreateCompanionBuilder = ChaptersCompanion Function({
  required String id,
  required String subjectId,
  required int orderNo,
  required String titleBn,
  required String titleEn,
  Value<bool> inSyllabus,
  required String verified,
  Value<bool> isCustom,
  Value<int> rowid,
});
typedef $$ChaptersTableUpdateCompanionBuilder = ChaptersCompanion Function({
  Value<String> id,
  Value<String> subjectId,
  Value<int> orderNo,
  Value<String> titleBn,
  Value<String> titleEn,
  Value<bool> inSyllabus,
  Value<String> verified,
  Value<bool> isCustom,
  Value<int> rowid,
});

class $$ChaptersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ChaptersTable,
    Chapter,
    $$ChaptersTableFilterComposer,
    $$ChaptersTableOrderingComposer,
    $$ChaptersTableCreateCompanionBuilder,
    $$ChaptersTableUpdateCompanionBuilder> {
  $$ChaptersTableTableManager(_$AppDatabase db, $ChaptersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ChaptersTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ChaptersTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> subjectId = const Value.absent(),
            Value<int> orderNo = const Value.absent(),
            Value<String> titleBn = const Value.absent(),
            Value<String> titleEn = const Value.absent(),
            Value<bool> inSyllabus = const Value.absent(),
            Value<String> verified = const Value.absent(),
            Value<bool> isCustom = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ChaptersCompanion(
            id: id,
            subjectId: subjectId,
            orderNo: orderNo,
            titleBn: titleBn,
            titleEn: titleEn,
            inSyllabus: inSyllabus,
            verified: verified,
            isCustom: isCustom,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String subjectId,
            required int orderNo,
            required String titleBn,
            required String titleEn,
            Value<bool> inSyllabus = const Value.absent(),
            required String verified,
            Value<bool> isCustom = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ChaptersCompanion.insert(
            id: id,
            subjectId: subjectId,
            orderNo: orderNo,
            titleBn: titleBn,
            titleEn: titleEn,
            inSyllabus: inSyllabus,
            verified: verified,
            isCustom: isCustom,
            rowid: rowid,
          ),
        ));
}

class $$ChaptersTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ChaptersTable> {
  $$ChaptersTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get subjectId => $state.composableBuilder(
      column: $state.table.subjectId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get orderNo => $state.composableBuilder(
      column: $state.table.orderNo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get titleBn => $state.composableBuilder(
      column: $state.table.titleBn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get titleEn => $state.composableBuilder(
      column: $state.table.titleEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get inSyllabus => $state.composableBuilder(
      column: $state.table.inSyllabus,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get verified => $state.composableBuilder(
      column: $state.table.verified,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isCustom => $state.composableBuilder(
      column: $state.table.isCustom,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ChaptersTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ChaptersTable> {
  $$ChaptersTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get subjectId => $state.composableBuilder(
      column: $state.table.subjectId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get orderNo => $state.composableBuilder(
      column: $state.table.orderNo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get titleBn => $state.composableBuilder(
      column: $state.table.titleBn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get titleEn => $state.composableBuilder(
      column: $state.table.titleEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get inSyllabus => $state.composableBuilder(
      column: $state.table.inSyllabus,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get verified => $state.composableBuilder(
      column: $state.table.verified,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isCustom => $state.composableBuilder(
      column: $state.table.isCustom,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$TopicsTableCreateCompanionBuilder = TopicsCompanion Function({
  required String id,
  required String chapterId,
  required int orderNo,
  required String titleBn,
  required String titleEn,
  Value<bool> isDone,
  Value<DateTime?> doneAt,
  Value<String?> note,
  Value<bool> isWeak,
  Value<int> revisionCount,
  Value<bool> isCustom,
  Value<int> rowid,
});
typedef $$TopicsTableUpdateCompanionBuilder = TopicsCompanion Function({
  Value<String> id,
  Value<String> chapterId,
  Value<int> orderNo,
  Value<String> titleBn,
  Value<String> titleEn,
  Value<bool> isDone,
  Value<DateTime?> doneAt,
  Value<String?> note,
  Value<bool> isWeak,
  Value<int> revisionCount,
  Value<bool> isCustom,
  Value<int> rowid,
});

class $$TopicsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TopicsTable,
    Topic,
    $$TopicsTableFilterComposer,
    $$TopicsTableOrderingComposer,
    $$TopicsTableCreateCompanionBuilder,
    $$TopicsTableUpdateCompanionBuilder> {
  $$TopicsTableTableManager(_$AppDatabase db, $TopicsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TopicsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TopicsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> chapterId = const Value.absent(),
            Value<int> orderNo = const Value.absent(),
            Value<String> titleBn = const Value.absent(),
            Value<String> titleEn = const Value.absent(),
            Value<bool> isDone = const Value.absent(),
            Value<DateTime?> doneAt = const Value.absent(),
            Value<String?> note = const Value.absent(),
            Value<bool> isWeak = const Value.absent(),
            Value<int> revisionCount = const Value.absent(),
            Value<bool> isCustom = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TopicsCompanion(
            id: id,
            chapterId: chapterId,
            orderNo: orderNo,
            titleBn: titleBn,
            titleEn: titleEn,
            isDone: isDone,
            doneAt: doneAt,
            note: note,
            isWeak: isWeak,
            revisionCount: revisionCount,
            isCustom: isCustom,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String chapterId,
            required int orderNo,
            required String titleBn,
            required String titleEn,
            Value<bool> isDone = const Value.absent(),
            Value<DateTime?> doneAt = const Value.absent(),
            Value<String?> note = const Value.absent(),
            Value<bool> isWeak = const Value.absent(),
            Value<int> revisionCount = const Value.absent(),
            Value<bool> isCustom = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TopicsCompanion.insert(
            id: id,
            chapterId: chapterId,
            orderNo: orderNo,
            titleBn: titleBn,
            titleEn: titleEn,
            isDone: isDone,
            doneAt: doneAt,
            note: note,
            isWeak: isWeak,
            revisionCount: revisionCount,
            isCustom: isCustom,
            rowid: rowid,
          ),
        ));
}

class $$TopicsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $TopicsTable> {
  $$TopicsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get chapterId => $state.composableBuilder(
      column: $state.table.chapterId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get orderNo => $state.composableBuilder(
      column: $state.table.orderNo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get titleBn => $state.composableBuilder(
      column: $state.table.titleBn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get titleEn => $state.composableBuilder(
      column: $state.table.titleEn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isDone => $state.composableBuilder(
      column: $state.table.isDone,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get doneAt => $state.composableBuilder(
      column: $state.table.doneAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isWeak => $state.composableBuilder(
      column: $state.table.isWeak,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get revisionCount => $state.composableBuilder(
      column: $state.table.revisionCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isCustom => $state.composableBuilder(
      column: $state.table.isCustom,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$TopicsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $TopicsTable> {
  $$TopicsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get chapterId => $state.composableBuilder(
      column: $state.table.chapterId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get orderNo => $state.composableBuilder(
      column: $state.table.orderNo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get titleBn => $state.composableBuilder(
      column: $state.table.titleBn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get titleEn => $state.composableBuilder(
      column: $state.table.titleEn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isDone => $state.composableBuilder(
      column: $state.table.isDone,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get doneAt => $state.composableBuilder(
      column: $state.table.doneAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isWeak => $state.composableBuilder(
      column: $state.table.isWeak,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get revisionCount => $state.composableBuilder(
      column: $state.table.revisionCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isCustom => $state.composableBuilder(
      column: $state.table.isCustom,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$UserProfilesTableCreateCompanionBuilder = UserProfilesCompanion
    Function({
  required String id,
  required String groupKey,
  required String language,
  required DateTime examDate,
  Value<String> weekStartDay,
  Value<bool> bnDigits,
  Value<int> rowid,
});
typedef $$UserProfilesTableUpdateCompanionBuilder = UserProfilesCompanion
    Function({
  Value<String> id,
  Value<String> groupKey,
  Value<String> language,
  Value<DateTime> examDate,
  Value<String> weekStartDay,
  Value<bool> bnDigits,
  Value<int> rowid,
});

class $$UserProfilesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserProfilesTable,
    UserProfile,
    $$UserProfilesTableFilterComposer,
    $$UserProfilesTableOrderingComposer,
    $$UserProfilesTableCreateCompanionBuilder,
    $$UserProfilesTableUpdateCompanionBuilder> {
  $$UserProfilesTableTableManager(_$AppDatabase db, $UserProfilesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UserProfilesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UserProfilesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> groupKey = const Value.absent(),
            Value<String> language = const Value.absent(),
            Value<DateTime> examDate = const Value.absent(),
            Value<String> weekStartDay = const Value.absent(),
            Value<bool> bnDigits = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserProfilesCompanion(
            id: id,
            groupKey: groupKey,
            language: language,
            examDate: examDate,
            weekStartDay: weekStartDay,
            bnDigits: bnDigits,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String groupKey,
            required String language,
            required DateTime examDate,
            Value<String> weekStartDay = const Value.absent(),
            Value<bool> bnDigits = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserProfilesCompanion.insert(
            id: id,
            groupKey: groupKey,
            language: language,
            examDate: examDate,
            weekStartDay: weekStartDay,
            bnDigits: bnDigits,
            rowid: rowid,
          ),
        ));
}

class $$UserProfilesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $UserProfilesTable> {
  $$UserProfilesTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get groupKey => $state.composableBuilder(
      column: $state.table.groupKey,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get language => $state.composableBuilder(
      column: $state.table.language,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get examDate => $state.composableBuilder(
      column: $state.table.examDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get weekStartDay => $state.composableBuilder(
      column: $state.table.weekStartDay,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get bnDigits => $state.composableBuilder(
      column: $state.table.bnDigits,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UserProfilesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UserProfilesTable> {
  $$UserProfilesTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get groupKey => $state.composableBuilder(
      column: $state.table.groupKey,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get language => $state.composableBuilder(
      column: $state.table.language,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get examDate => $state.composableBuilder(
      column: $state.table.examDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get weekStartDay => $state.composableBuilder(
      column: $state.table.weekStartDay,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get bnDigits => $state.composableBuilder(
      column: $state.table.bnDigits,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$StudySessionsTableCreateCompanionBuilder = StudySessionsCompanion
    Function({
  required String id,
  Value<String?> subjectId,
  Value<String?> chapterId,
  required DateTime startAt,
  required DateTime endAt,
  required int durationSec,
  required String mode,
  Value<int> rowid,
});
typedef $$StudySessionsTableUpdateCompanionBuilder = StudySessionsCompanion
    Function({
  Value<String> id,
  Value<String?> subjectId,
  Value<String?> chapterId,
  Value<DateTime> startAt,
  Value<DateTime> endAt,
  Value<int> durationSec,
  Value<String> mode,
  Value<int> rowid,
});

class $$StudySessionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StudySessionsTable,
    StudySession,
    $$StudySessionsTableFilterComposer,
    $$StudySessionsTableOrderingComposer,
    $$StudySessionsTableCreateCompanionBuilder,
    $$StudySessionsTableUpdateCompanionBuilder> {
  $$StudySessionsTableTableManager(_$AppDatabase db, $StudySessionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$StudySessionsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$StudySessionsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> subjectId = const Value.absent(),
            Value<String?> chapterId = const Value.absent(),
            Value<DateTime> startAt = const Value.absent(),
            Value<DateTime> endAt = const Value.absent(),
            Value<int> durationSec = const Value.absent(),
            Value<String> mode = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              StudySessionsCompanion(
            id: id,
            subjectId: subjectId,
            chapterId: chapterId,
            startAt: startAt,
            endAt: endAt,
            durationSec: durationSec,
            mode: mode,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> subjectId = const Value.absent(),
            Value<String?> chapterId = const Value.absent(),
            required DateTime startAt,
            required DateTime endAt,
            required int durationSec,
            required String mode,
            Value<int> rowid = const Value.absent(),
          }) =>
              StudySessionsCompanion.insert(
            id: id,
            subjectId: subjectId,
            chapterId: chapterId,
            startAt: startAt,
            endAt: endAt,
            durationSec: durationSec,
            mode: mode,
            rowid: rowid,
          ),
        ));
}

class $$StudySessionsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $StudySessionsTable> {
  $$StudySessionsTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get subjectId => $state.composableBuilder(
      column: $state.table.subjectId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get chapterId => $state.composableBuilder(
      column: $state.table.chapterId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get startAt => $state.composableBuilder(
      column: $state.table.startAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get endAt => $state.composableBuilder(
      column: $state.table.endAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get durationSec => $state.composableBuilder(
      column: $state.table.durationSec,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get mode => $state.composableBuilder(
      column: $state.table.mode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$StudySessionsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $StudySessionsTable> {
  $$StudySessionsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get subjectId => $state.composableBuilder(
      column: $state.table.subjectId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get chapterId => $state.composableBuilder(
      column: $state.table.chapterId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get startAt => $state.composableBuilder(
      column: $state.table.startAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get endAt => $state.composableBuilder(
      column: $state.table.endAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get durationSec => $state.composableBuilder(
      column: $state.table.durationSec,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get mode => $state.composableBuilder(
      column: $state.table.mode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SubjectsTableTableManager get subjects =>
      $$SubjectsTableTableManager(_db, _db.subjects);
  $$ChaptersTableTableManager get chapters =>
      $$ChaptersTableTableManager(_db, _db.chapters);
  $$TopicsTableTableManager get topics =>
      $$TopicsTableTableManager(_db, _db.topics);
  $$UserProfilesTableTableManager get userProfiles =>
      $$UserProfilesTableTableManager(_db, _db.userProfiles);
  $$StudySessionsTableTableManager get studySessions =>
      $$StudySessionsTableTableManager(_db, _db.studySessions);
}
