import '/components/mentor_card_participant_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'mentors_participants_widget.dart' show MentorsParticipantsWidget;
import 'package:flutter/material.dart';

class MentorsParticipantsModel
    extends FlutterFlowModel<MentorsParticipantsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for mentorCardParticipant component.
  late MentorCardParticipantModel mentorCardParticipantModel1;
  // Model for mentorCardParticipant component.
  late MentorCardParticipantModel mentorCardParticipantModel2;
  // Model for mentorCardParticipant component.
  late MentorCardParticipantModel mentorCardParticipantModel3;
  // Model for mentorCardParticipant component.
  late MentorCardParticipantModel mentorCardParticipantModel4;
  // Model for Menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    mentorCardParticipantModel1 =
        createModel(context, () => MentorCardParticipantModel());
    mentorCardParticipantModel2 =
        createModel(context, () => MentorCardParticipantModel());
    mentorCardParticipantModel3 =
        createModel(context, () => MentorCardParticipantModel());
    mentorCardParticipantModel4 =
        createModel(context, () => MentorCardParticipantModel());
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    mentorCardParticipantModel1.dispose();
    mentorCardParticipantModel2.dispose();
    mentorCardParticipantModel3.dispose();
    mentorCardParticipantModel4.dispose();
    menuModel.dispose();
  }
}
