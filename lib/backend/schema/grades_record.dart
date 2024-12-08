import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GradesRecord extends FirestoreRecord {
  GradesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "team" field.
  DocumentReference? _team;
  DocumentReference? get team => _team;
  bool hasTeam() => _team != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "grade" field.
  JudgeChoiceStruct? _grade;
  JudgeChoiceStruct get grade => _grade ?? JudgeChoiceStruct();
  bool hasGrade() => _grade != null;

  // "judge" field.
  DocumentReference? _judge;
  DocumentReference? get judge => _judge;
  bool hasJudge() => _judge != null;

  void _initializeFields() {
    _team = snapshotData['team'] as DocumentReference?;
    _category = snapshotData['category'] as String?;
    _grade = JudgeChoiceStruct.maybeFromMap(snapshotData['grade']);
    _judge = snapshotData['judge'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('grades');

  static Stream<GradesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GradesRecord.fromSnapshot(s));

  static Future<GradesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GradesRecord.fromSnapshot(s));

  static GradesRecord fromSnapshot(DocumentSnapshot snapshot) => GradesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GradesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GradesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GradesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GradesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGradesRecordData({
  DocumentReference? team,
  String? category,
  JudgeChoiceStruct? grade,
  DocumentReference? judge,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'team': team,
      'category': category,
      'grade': JudgeChoiceStruct().toMap(),
      'judge': judge,
    }.withoutNulls,
  );

  // Handle nested data for "grade" field.
  addJudgeChoiceStructData(firestoreData, grade, 'grade');

  return firestoreData;
}

class GradesRecordDocumentEquality implements Equality<GradesRecord> {
  const GradesRecordDocumentEquality();

  @override
  bool equals(GradesRecord? e1, GradesRecord? e2) {
    return e1?.team == e2?.team &&
        e1?.category == e2?.category &&
        e1?.grade == e2?.grade &&
        e1?.judge == e2?.judge;
  }

  @override
  int hash(GradesRecord? e) =>
      const ListEquality().hash([e?.team, e?.category, e?.grade, e?.judge]);

  @override
  bool isValidKey(Object? o) => o is GradesRecord;
}
