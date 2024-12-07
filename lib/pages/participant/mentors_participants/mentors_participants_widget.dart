import '/components/mentor_card_participant_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'package:flutter/material.dart';
import 'mentors_participants_model.dart';
export 'mentors_participants_model.dart';

class MentorsParticipantsWidget extends StatefulWidget {
  const MentorsParticipantsWidget({super.key});

  @override
  State<MentorsParticipantsWidget> createState() =>
      _MentorsParticipantsWidgetState();
}

class _MentorsParticipantsWidgetState extends State<MentorsParticipantsWidget> {
  late MentorsParticipantsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MentorsParticipantsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.menuModel,
            updateCallback: () => safeSetState(() {}),
            child: const MenuWidget(),
          ),
        ),
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.sizeOf(context).height * 0.05),
          child: AppBar(
            backgroundColor: const Color(0xFF8D0003),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
            title: Align(
              alignment: const AlignmentDirectional(-1.0, 1.0),
              child: Text(
                'Mentors',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            actions: const [],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  wrapWithModel(
                    model: _model.mentorCardParticipantModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: const MentorCardParticipantWidget(),
                  ),
                  wrapWithModel(
                    model: _model.mentorCardParticipantModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: const MentorCardParticipantWidget(),
                  ),
                  wrapWithModel(
                    model: _model.mentorCardParticipantModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: const MentorCardParticipantWidget(),
                  ),
                  wrapWithModel(
                    model: _model.mentorCardParticipantModel4,
                    updateCallback: () => safeSetState(() {}),
                    child: const MentorCardParticipantWidget(),
                  ),
                ].divide(const SizedBox(height: 5.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
