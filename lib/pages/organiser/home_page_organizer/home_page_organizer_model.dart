import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'home_page_organizer_widget.dart' show HomePageOrganizerWidget;
import 'package:flutter/material.dart';

class HomePageOrganizerModel extends FlutterFlowModel<HomePageOrganizerWidget> {
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
