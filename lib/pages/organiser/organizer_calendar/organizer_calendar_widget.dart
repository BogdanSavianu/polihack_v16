import '/backend/backend.dart';
import '/components/recycler_activity_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import '/pages/organiser/insert_task/insert_task_widget.dart';
import 'package:flutter/material.dart';
import 'organizer_calendar_model.dart';
export 'organizer_calendar_model.dart';

class OrganizerCalendarWidget extends StatefulWidget {
  const OrganizerCalendarWidget({super.key});

  @override
  State<OrganizerCalendarWidget> createState() =>
      _OrganizerCalendarWidgetState();
}

class _OrganizerCalendarWidgetState extends State<OrganizerCalendarWidget> {
  late OrganizerCalendarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrganizerCalendarModel());
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
                scaffoldKey.currentState!.openDrawer();
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
            actions: [
              FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).info,
                  size: 24.0,
                ),
                onPressed: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return GestureDetector(
                        onTap: () => FocusScope.of(context).unfocus(),
                        child: Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: const InsertTaskWidget(),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
              ),
            ],
            centerTitle: false,
            elevation: 0.0,
          ),
        ),
        body: Container(
          height: MediaQuery.sizeOf(context).height * 0.92,
          decoration: const BoxDecoration(),
          child: StreamBuilder<List<CalendarRecord>>(
            stream: queryCalendarRecord(
              queryBuilder: (calendarRecord) => calendarRecord
                  .where(
                    'start_time',
                    isGreaterThan: getCurrentTimestamp,
                  )
                  .orderBy('start_time'),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }
              List<CalendarRecord> listViewCalendarRecordList = snapshot.data!;

              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: listViewCalendarRecordList.length,
                itemBuilder: (context, listViewIndex) {
                  final listViewCalendarRecord =
                      listViewCalendarRecordList[listViewIndex];
                  return RecyclerActivityWidget(
                    key: Key(
                        'Keya73_${listViewIndex}_of_${listViewCalendarRecordList.length}'),
                    name: listViewCalendarRecord.name,
                    startTime: listViewCalendarRecord.startTime!,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
