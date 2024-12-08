import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MentorScheduleRecord extends FirestoreRecord {
  MentorScheduleRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "mentor" field.
  DocumentReference? _mentor;
  DocumentReference? get mentor => _mentor;
  bool hasMentor() => _mentor != null;

  // "start_at" field.
  DateTime? _startAt;
  DateTime? get startAt => _startAt;
  bool hasStartAt() => _startAt != null;

  // "team" field.
  DocumentReference? _team;
  DocumentReference? get team => _team;
  bool hasTeam() => _team != null;

  void _initializeFields() {
    _mentor = snapshotData['mentor'] as DocumentReference?;
    _startAt = snapshotData['start_at'] as DateTime?;
    _team = snapshotData['team'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mentorSchedule');

  static Stream<MentorScheduleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MentorScheduleRecord.fromSnapshot(s));

  static Future<MentorScheduleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MentorScheduleRecord.fromSnapshot(s));

  static MentorScheduleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MentorScheduleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MentorScheduleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MentorScheduleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MentorScheduleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MentorScheduleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMentorScheduleRecordData({
  DocumentReference? mentor,
  DateTime? startAt,
  DocumentReference? team,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mentor': mentor,
      'start_at': startAt,
      'team': team,
    }.withoutNulls,
  );

  return firestoreData;
}

class MentorScheduleRecordDocumentEquality
    implements Equality<MentorScheduleRecord> {
  const MentorScheduleRecordDocumentEquality();

  @override
  bool equals(MentorScheduleRecord? e1, MentorScheduleRecord? e2) {
    return e1?.mentor == e2?.mentor &&
        e1?.startAt == e2?.startAt &&
        e1?.team == e2?.team;
  }

  @override
  int hash(MentorScheduleRecord? e) =>
      const ListEquality().hash([e?.mentor, e?.startAt, e?.team]);

  @override
  bool isValidKey(Object? o) => o is MentorScheduleRecord;
}
