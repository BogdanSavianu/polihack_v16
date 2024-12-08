// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class JudgeChoiceStruct extends FFFirebaseStruct {
  JudgeChoiceStruct({
    String? title,
    double? grade,
    double? weight,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _grade = grade,
        _weight = weight,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "grade" field.
  double? _grade;
  double get grade => _grade ?? 0.0;
  set grade(double? val) => _grade = val;

  void incrementGrade(double amount) => grade = grade + amount;

  bool hasGrade() => _grade != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  set weight(double? val) => _weight = val;

  void incrementWeight(double amount) => weight = weight + amount;

  bool hasWeight() => _weight != null;

  static JudgeChoiceStruct fromMap(Map<String, dynamic> data) =>
      JudgeChoiceStruct(
        title: data['title'] as String?,
        grade: castToType<double>(data['grade']),
        weight: castToType<double>(data['weight']),
      );

  static JudgeChoiceStruct? maybeFromMap(dynamic data) => data is Map
      ? JudgeChoiceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'grade': _grade,
        'weight': _weight,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'grade': serializeParam(
          _grade,
          ParamType.double,
        ),
        'weight': serializeParam(
          _weight,
          ParamType.double,
        ),
      }.withoutNulls;

  static JudgeChoiceStruct fromSerializableMap(Map<String, dynamic> data) =>
      JudgeChoiceStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        grade: deserializeParam(
          data['grade'],
          ParamType.double,
          false,
        ),
        weight: deserializeParam(
          data['weight'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'JudgeChoiceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is JudgeChoiceStruct &&
        title == other.title &&
        grade == other.grade &&
        weight == other.weight;
  }

  @override
  int get hashCode => const ListEquality().hash([title, grade, weight]);
}

JudgeChoiceStruct createJudgeChoiceStruct({
  String? title,
  double? grade,
  double? weight,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    JudgeChoiceStruct(
      title: title,
      grade: grade,
      weight: weight,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

JudgeChoiceStruct? updateJudgeChoiceStruct(
  JudgeChoiceStruct? judgeChoice, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    judgeChoice
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addJudgeChoiceStructData(
  Map<String, dynamic> firestoreData,
  JudgeChoiceStruct? judgeChoice,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (judgeChoice == null) {
    return;
  }
  if (judgeChoice.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && judgeChoice.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final judgeChoiceData =
      getJudgeChoiceFirestoreData(judgeChoice, forFieldValue);
  final nestedData =
      judgeChoiceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = judgeChoice.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getJudgeChoiceFirestoreData(
  JudgeChoiceStruct? judgeChoice, [
  bool forFieldValue = false,
]) {
  if (judgeChoice == null) {
    return {};
  }
  final firestoreData = mapToFirestore(judgeChoice.toMap());

  // Add any Firestore field values
  judgeChoice.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getJudgeChoiceListFirestoreData(
  List<JudgeChoiceStruct>? judgeChoices,
) =>
    judgeChoices?.map((e) => getJudgeChoiceFirestoreData(e, true)).toList() ??
    [];
