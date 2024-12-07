import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_judging_criteria_widget.dart' show AddJudgingCriteriaWidget;
import 'package:flutter/material.dart';

class AddJudgingCriteriaModel
    extends FlutterFlowModel<AddJudgingCriteriaWidget> {
  ///  Local state fields for this page.

  List<CriterionStruct> citerions = [];
  void addToCiterions(CriterionStruct item) => citerions.add(item);
  void removeFromCiterions(CriterionStruct item) => citerions.remove(item);
  void removeAtIndexFromCiterions(int index) => citerions.removeAt(index);
  void insertAtIndexInCiterions(int index, CriterionStruct item) =>
      citerions.insert(index, item);
  void updateCiterionsAtIndex(int index, Function(CriterionStruct) updateFn) =>
      citerions[index] = updateFn(citerions[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();
  }
}
