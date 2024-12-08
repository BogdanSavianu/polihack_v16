import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalendarRecord extends FirestoreRecord {
  CalendarRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _startTime = snapshotData['start_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calendar');

  static Stream<CalendarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CalendarRecord.fromSnapshot(s));

  static Future<CalendarRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CalendarRecord.fromSnapshot(s));

  static CalendarRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CalendarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CalendarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CalendarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CalendarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CalendarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCalendarRecordData({
  String? name,
  DateTime? startTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'start_time': startTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class CalendarRecordDocumentEquality implements Equality<CalendarRecord> {
  const CalendarRecordDocumentEquality();

  @override
  bool equals(CalendarRecord? e1, CalendarRecord? e2) {
    return e1?.name == e2?.name && e1?.startTime == e2?.startTime;
  }

  @override
  int hash(CalendarRecord? e) =>
      const ListEquality().hash([e?.name, e?.startTime]);

  @override
  bool isValidKey(Object? o) => o is CalendarRecord;
}
