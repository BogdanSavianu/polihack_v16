// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CriterionStruct extends FFFirebaseStruct {
  CriterionStruct({
    String? title,
    String? description,
    double? grade,
    double? weight,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _description = description,
        _grade = grade,
        _weight = weight,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

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

  static CriterionStruct fromMap(Map<String, dynamic> data) => CriterionStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        grade: castToType<double>(data['grade']),
        weight: castToType<double>(data['weight']),
      );

  static CriterionStruct? maybeFromMap(dynamic data) => data is Map
      ? CriterionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'grade': _grade,
        'weight': _weight,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
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

  static CriterionStruct fromSerializableMap(Map<String, dynamic> data) =>
      CriterionStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
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
  String toString() => 'CriterionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CriterionStruct &&
        title == other.title &&
        description == other.description &&
        grade == other.grade &&
        weight == other.weight;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, description, grade, weight]);
}

CriterionStruct createCriterionStruct({
  String? title,
  String? description,
  double? grade,
  double? weight,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CriterionStruct(
      title: title,
      description: description,
      grade: grade,
      weight: weight,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CriterionStruct? updateCriterionStruct(
  CriterionStruct? criterion, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    criterion
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCriterionStructData(
  Map<String, dynamic> firestoreData,
  CriterionStruct? criterion,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (criterion == null) {
    return;
  }
  if (criterion.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && criterion.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final criterionData = getCriterionFirestoreData(criterion, forFieldValue);
  final nestedData = criterionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = criterion.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCriterionFirestoreData(
  CriterionStruct? criterion, [
  bool forFieldValue = false,
]) {
  if (criterion == null) {
    return {};
  }
  final firestoreData = mapToFirestore(criterion.toMap());

  // Add any Firestore field values
  criterion.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCriterionListFirestoreData(
  List<CriterionStruct>? criterions,
) =>
    criterions?.map((e) => getCriterionFirestoreData(e, true)).toList() ?? [];
