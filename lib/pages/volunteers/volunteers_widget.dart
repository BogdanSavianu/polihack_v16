import '/components/volunteers_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/menu/menu_widget.dart';
import 'package:flutter/material.dart';
import 'volunteers_model.dart';
export 'volunteers_model.dart';

class VolunteersWidget extends StatefulWidget {
  const VolunteersWidget({super.key});

  @override
  State<VolunteersWidget> createState() => _VolunteersWidgetState();
}

class _VolunteersWidgetState extends State<VolunteersWidget> {
  late VolunteersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VolunteersModel());
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
                'Volunteers',
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
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.volunteersCardModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: const VolunteersCardWidget(),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.volunteersCardModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: const VolunteersCardWidget(),
                  ),
                  wrapWithModel(
                    model: _model.volunteersCardModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: const VolunteersCardWidget(),
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
