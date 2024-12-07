import '/flutter_flow/flutter_flow_util.dart';
import 'recycler_criteria_widget.dart' show RecyclerCriteriaWidget;
import 'package:flutter/material.dart';

class RecyclerCriteriaModel extends FlutterFlowModel<RecyclerCriteriaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
