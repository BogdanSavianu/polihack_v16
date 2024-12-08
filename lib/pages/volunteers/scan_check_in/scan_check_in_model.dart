import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scan_check_in_widget.dart' show ScanCheckInWidget;
import 'package:flutter/material.dart';

class ScanCheckInModel extends FlutterFlowModel<ScanCheckInWidget> {
  ///  State fields for stateful widgets in this page.

  var scannedQrCode = '';
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  UsersRecord? userDocument;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
