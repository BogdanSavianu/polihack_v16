import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'contestant_calendar_widget.dart' show ContestantCalendarWidget;
import 'package:flutter/material.dart';

class ContestantCalendarModel
    extends FlutterFlowModel<ContestantCalendarWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
  }
}
