import '/components/recycler_team_judge_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'judging_widget.dart' show JudgingWidget;
import 'package:flutter/material.dart';

class JudgingModel extends FlutterFlowModel<JudgingWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for recyclerTeamJudge component.
  late RecyclerTeamJudgeModel recyclerTeamJudgeModel1;
  // Model for recyclerTeamJudge component.
  late RecyclerTeamJudgeModel recyclerTeamJudgeModel2;
  // Model for recyclerTeamJudge component.
  late RecyclerTeamJudgeModel recyclerTeamJudgeModel3;
  // Model for recyclerTeamJudge component.
  late RecyclerTeamJudgeModel recyclerTeamJudgeModel4;
  // Model for recyclerTeamJudge component.
  late RecyclerTeamJudgeModel recyclerTeamJudgeModel5;
  // Model for recyclerTeamJudge component.
  late RecyclerTeamJudgeModel recyclerTeamJudgeModel6;
  // Model for recyclerTeamJudge component.
  late RecyclerTeamJudgeModel recyclerTeamJudgeModel7;
  // Model for Menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    recyclerTeamJudgeModel1 =
        createModel(context, () => RecyclerTeamJudgeModel());
    recyclerTeamJudgeModel2 =
        createModel(context, () => RecyclerTeamJudgeModel());
    recyclerTeamJudgeModel3 =
        createModel(context, () => RecyclerTeamJudgeModel());
    recyclerTeamJudgeModel4 =
        createModel(context, () => RecyclerTeamJudgeModel());
    recyclerTeamJudgeModel5 =
        createModel(context, () => RecyclerTeamJudgeModel());
    recyclerTeamJudgeModel6 =
        createModel(context, () => RecyclerTeamJudgeModel());
    recyclerTeamJudgeModel7 =
        createModel(context, () => RecyclerTeamJudgeModel());
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    recyclerTeamJudgeModel1.dispose();
    recyclerTeamJudgeModel2.dispose();
    recyclerTeamJudgeModel3.dispose();
    recyclerTeamJudgeModel4.dispose();
    recyclerTeamJudgeModel5.dispose();
    recyclerTeamJudgeModel6.dispose();
    recyclerTeamJudgeModel7.dispose();
    menuModel.dispose();
  }
}
