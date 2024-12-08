import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'judge_team_widget.dart' show JudgeTeamWidget;
import 'package:flutter/material.dart';

class JudgeTeamModel extends FlutterFlowModel<JudgeTeamWidget> {
  ///  Local state fields for this page.

  List<CriterionStruct> evaluationCategories = [];
  void addToEvaluationCategories(CriterionStruct item) =>
      evaluationCategories.add(item);
  void removeFromEvaluationCategories(CriterionStruct item) =>
      evaluationCategories.remove(item);
  void removeAtIndexFromEvaluationCategories(int index) =>
      evaluationCategories.removeAt(index);
  void insertAtIndexInEvaluationCategories(int index, CriterionStruct item) =>
      evaluationCategories.insert(index, item);
  void updateEvaluationCategoriesAtIndex(
          int index, Function(CriterionStruct) updateFn) =>
      evaluationCategories[index] = updateFn(evaluationCategories[index]);

  String? selectedCategory;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
