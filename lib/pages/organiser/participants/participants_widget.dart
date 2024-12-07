import '/components/team_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'participants_model.dart';
export 'participants_model.dart';

class ParticipantsWidget extends StatefulWidget {
  const ParticipantsWidget({super.key});

  @override
  State<ParticipantsWidget> createState() => _ParticipantsWidgetState();
}

class _ParticipantsWidgetState extends State<ParticipantsWidget> {
  late ParticipantsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ParticipantsModel());
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
              borderColor: Colors.transparent,
              borderRadius: 8.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.list_rounded,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
              onPressed: () async {
                scaffoldKey.currentState!.openDrawer();
              },
            ),
            title: Align(
              alignment: const AlignmentDirectional(-1.0, 1.0),
              child: Text(
                'Participants',
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
                padding: const EdgeInsets.fromLTRB(
                  0,
                  10.0,
                  0,
                  10.0,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  wrapWithModel(
                    model: _model.teamCardModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: TeamCardWidget(
                      teamName: 'Team Alpha',
                      peopleName: List.generate(random_data.randomInteger(1, 4),
                          (index) => random_data.randomName(true, false)),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.teamCardModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: TeamCardWidget(
                      teamName: 'Team Beta',
                      peopleName: List.generate(random_data.randomInteger(2, 4),
                          (index) => random_data.randomName(true, false)),
                    ),
                  ),
                ].divide(const SizedBox(height: 10.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
