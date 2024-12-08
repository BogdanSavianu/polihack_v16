import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<CriterionStruct> _evaluationCategories = [];
  List<CriterionStruct> get evaluationCategories => _evaluationCategories;
  set evaluationCategories(List<CriterionStruct> value) {
    _evaluationCategories = value;
  }

  void addToEvaluationCategories(CriterionStruct value) {
    evaluationCategories.add(value);
  }

  void removeFromEvaluationCategories(CriterionStruct value) {
    evaluationCategories.remove(value);
  }

  void removeAtIndexFromEvaluationCategories(int index) {
    evaluationCategories.removeAt(index);
  }

  void updateEvaluationCategoriesAtIndex(
    int index,
    CriterionStruct Function(CriterionStruct) updateFn,
  ) {
    evaluationCategories[index] = updateFn(_evaluationCategories[index]);
  }

  void insertAtIndexInEvaluationCategories(int index, CriterionStruct value) {
    evaluationCategories.insert(index, value);
  }

  String _category = '';
  String get category => _category;
  set category(String value) {
    _category = value;
  }
}
