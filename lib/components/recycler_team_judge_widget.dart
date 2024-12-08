import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'recycler_team_judge_model.dart';
export 'recycler_team_judge_model.dart';

class RecyclerTeamJudgeWidget extends StatefulWidget {
  const RecyclerTeamJudgeWidget({
    super.key,
    required this.teamName,
    required this.teamDesc,
  });

  final String? teamName;
  final String? teamDesc;

  @override
  State<RecyclerTeamJudgeWidget> createState() =>
      _RecyclerTeamJudgeWidgetState();
}

class _RecyclerTeamJudgeWidgetState extends State<RecyclerTeamJudgeWidget> {
  late RecyclerTeamJudgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecyclerTeamJudgeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 3.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.teamName,
                    'n/a',
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.teamDesc,
                    'n/a',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.2,
              height: 50.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).error,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Mark',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
