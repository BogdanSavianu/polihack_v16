import '/components/volunteers_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'volunteers_widget.dart' show VolunteersWidget;
import 'package:flutter/material.dart';

class VolunteersModel extends FlutterFlowModel<VolunteersWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for volunteersCard component.
  late VolunteersCardModel volunteersCardModel1;
  // Model for volunteersCard component.
  late VolunteersCardModel volunteersCardModel2;
  // Model for volunteersCard component.
  late VolunteersCardModel volunteersCardModel3;
  // Model for Menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    volunteersCardModel1 = createModel(context, () => VolunteersCardModel());
    volunteersCardModel2 = createModel(context, () => VolunteersCardModel());
    volunteersCardModel3 = createModel(context, () => VolunteersCardModel());
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    volunteersCardModel1.dispose();
    volunteersCardModel2.dispose();
    volunteersCardModel3.dispose();
    menuModel.dispose();
  }
}
