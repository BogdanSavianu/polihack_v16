import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JudgingRecord extends FirestoreRecord {
  JudgingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "judge_form" field.
  List<CriterionStruct>? _judgeForm;
  List<CriterionStruct> get judgeForm => _judgeForm ?? const [];
  bool hasJudgeForm() => _judgeForm != null;

  // "hackathon_id" field.
  String? _hackathonId;
  String get hackathonId => _hackathonId ?? '';
  bool hasHackathonId() => _hackathonId != null;

  void _initializeFields() {
    _judgeForm = getStructList(
      snapshotData['judge_form'],
      CriterionStruct.fromMap,
    );
    _hackathonId = snapshotData['hackathon_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('judging');

  static Stream<JudgingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JudgingRecord.fromSnapshot(s));

  static Future<JudgingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JudgingRecord.fromSnapshot(s));

  static JudgingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JudgingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JudgingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JudgingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JudgingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JudgingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJudgingRecordData({
  String? hackathonId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hackathon_id': hackathonId,
    }.withoutNulls,
  );

  return firestoreData;
}

class JudgingRecordDocumentEquality implements Equality<JudgingRecord> {
  const JudgingRecordDocumentEquality();

  @override
  bool equals(JudgingRecord? e1, JudgingRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.judgeForm, e2?.judgeForm) &&
        e1?.hackathonId == e2?.hackathonId;
  }

  @override
  int hash(JudgingRecord? e) =>
      const ListEquality().hash([e?.judgeForm, e?.hackathonId]);

  @override
  bool isValidKey(Object? o) => o is JudgingRecord;
}
