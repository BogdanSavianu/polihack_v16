import '/components/recycler_activity_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'package:flutter/material.dart';
import 'contestant_calendar_model.dart';
export 'contestant_calendar_model.dart';

class ContestantCalendarWidget extends StatefulWidget {
  const ContestantCalendarWidget({super.key});

  @override
  State<ContestantCalendarWidget> createState() =>
      _ContestantCalendarWidgetState();
}

class _ContestantCalendarWidgetState extends State<ContestantCalendarWidget> {
  late ContestantCalendarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContestantCalendarModel());
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
                Icons.list,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
            title: Text(
              'Calendar',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            actions: const [],
            centerTitle: false,
            elevation: 0.0,
          ),
        ),
        body: Container(
          height: MediaQuery.sizeOf(context).height * 0.92,
          decoration: const BoxDecoration(),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Align(
                alignment: const AlignmentDirectional(-0.8, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Current activity',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.recyclerActivityModel1,
                updateCallback: () => safeSetState(() {}),
                child: const RecyclerActivityWidget(),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.8, 0.0),
                child: Text(
                  'Upcoming Activites',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 17.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.85, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Today',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.recyclerActivityModel2,
                updateCallback: () => safeSetState(() {}),
                child: const RecyclerActivityWidget(),
              ),
              wrapWithModel(
                model: _model.recyclerActivityModel3,
                updateCallback: () => safeSetState(() {}),
                child: const RecyclerActivityWidget(),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.8, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Tomorrow',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.recyclerActivityModel4,
                updateCallback: () => safeSetState(() {}),
                child: const RecyclerActivityWidget(),
              ),
              wrapWithModel(
                model: _model.recyclerActivityModel5,
                updateCallback: () => safeSetState(() {}),
                child: const RecyclerActivityWidget(),
              ),
              wrapWithModel(
                model: _model.recyclerActivityModel6,
                updateCallback: () => safeSetState(() {}),
                child: const RecyclerActivityWidget(),
              ),
              wrapWithModel(
                model: _model.recyclerActivityModel7,
                updateCallback: () => safeSetState(() {}),
                child: const RecyclerActivityWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
