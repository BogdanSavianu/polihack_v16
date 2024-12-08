import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recycler_criteria_widget.dart' show RecyclerCriteriaWidget;
import 'package:flutter/material.dart';

class RecyclerCriteriaModel extends FlutterFlowModel<RecyclerCriteriaWidget> {
  ///  Local state fields for this component.

  double? initialValue;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in recyclerCriteria widget.
  int? existsRowCopy;
  // Stores action output result for [Firestore Query - Query a collection] action in recyclerCriteria widget.
  GradesRecord? rowToUpdateCopy;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in TextField widget.
  int? existsRow;
  // Stores action output result for [Firestore Query - Query a collection] action in TextField widget.
  GradesRecord? rowToUpdate;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
