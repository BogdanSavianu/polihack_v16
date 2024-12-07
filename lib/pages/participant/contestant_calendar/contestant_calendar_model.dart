import '/components/recycler_activity_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'contestant_calendar_widget.dart' show ContestantCalendarWidget;
import 'package:flutter/material.dart';

class ContestantCalendarModel
    extends FlutterFlowModel<ContestantCalendarWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for recyclerActivity component.
  late RecyclerActivityModel recyclerActivityModel1;
  // Model for recyclerActivity component.
  late RecyclerActivityModel recyclerActivityModel2;
  // Model for recyclerActivity component.
  late RecyclerActivityModel recyclerActivityModel3;
  // Model for recyclerActivity component.
  late RecyclerActivityModel recyclerActivityModel4;
  // Model for recyclerActivity component.
  late RecyclerActivityModel recyclerActivityModel5;
  // Model for recyclerActivity component.
  late RecyclerActivityModel recyclerActivityModel6;
  // Model for recyclerActivity component.
  late RecyclerActivityModel recyclerActivityModel7;
  // Model for Menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    recyclerActivityModel1 =
        createModel(context, () => RecyclerActivityModel());
    recyclerActivityModel2 =
        createModel(context, () => RecyclerActivityModel());
    recyclerActivityModel3 =
        createModel(context, () => RecyclerActivityModel());
    recyclerActivityModel4 =
        createModel(context, () => RecyclerActivityModel());
    recyclerActivityModel5 =
        createModel(context, () => RecyclerActivityModel());
    recyclerActivityModel6 =
        createModel(context, () => RecyclerActivityModel());
    recyclerActivityModel7 =
        createModel(context, () => RecyclerActivityModel());
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    recyclerActivityModel1.dispose();
    recyclerActivityModel2.dispose();
    recyclerActivityModel3.dispose();
    recyclerActivityModel4.dispose();
    recyclerActivityModel5.dispose();
    recyclerActivityModel6.dispose();
    recyclerActivityModel7.dispose();
    menuModel.dispose();
  }
}
