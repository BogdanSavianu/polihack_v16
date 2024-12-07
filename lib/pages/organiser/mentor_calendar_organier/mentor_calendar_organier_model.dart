import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'mentor_calendar_organier_widget.dart' show MentorCalendarOrganierWidget;
import 'package:flutter/material.dart';

class MentorCalendarOrganierModel
    extends FlutterFlowModel<MentorCalendarOrganierWidget> {
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
