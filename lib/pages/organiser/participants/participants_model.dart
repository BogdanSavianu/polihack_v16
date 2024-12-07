import '/components/team_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'participants_widget.dart' show ParticipantsWidget;
import 'package:flutter/material.dart';

class ParticipantsModel extends FlutterFlowModel<ParticipantsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for teamCard component.
  late TeamCardModel teamCardModel1;
  // Model for teamCard component.
  late TeamCardModel teamCardModel2;
  // Model for Menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    teamCardModel1 = createModel(context, () => TeamCardModel());
    teamCardModel2 = createModel(context, () => TeamCardModel());
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    teamCardModel1.dispose();
    teamCardModel2.dispose();
    menuModel.dispose();
  }
}
