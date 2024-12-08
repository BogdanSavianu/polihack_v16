import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'recycler_criteria_model.dart';
export 'recycler_criteria_model.dart';

class RecyclerCriteriaWidget extends StatefulWidget {
  const RecyclerCriteriaWidget({
    super.key,
    required this.title,
    required this.description,
    required this.category,
    required this.teamId,
    required this.weight,
  });

  final String? title;
  final String? description;
  final String? category;
  final DocumentReference? teamId;
  final double? weight;

  @override
  State<RecyclerCriteriaWidget> createState() => _RecyclerCriteriaWidgetState();
}

class _RecyclerCriteriaWidgetState extends State<RecyclerCriteriaWidget> {
  late RecyclerCriteriaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecyclerCriteriaModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.existsRowCopy = await queryGradesRecordCount(
        queryBuilder: (gradesRecord) => gradesRecord
            .where(
              'team',
              isEqualTo: widget.teamId,
            )
            .where(
              'category',
              isEqualTo: widget.category,
            )
            .where(
              'grade.title',
              isEqualTo: widget.title,
            )
            .where(
              'judge',
              isEqualTo: currentUserReference,
            ),
      );
      if (_model.existsRowCopy != 0) {
        _model.rowToUpdateCopy = await queryGradesRecordOnce(
          queryBuilder: (gradesRecord) => gradesRecord
              .where(
                'team',
                isEqualTo: widget.teamId,
              )
              .where(
                'category',
                isEqualTo: widget.category,
              )
              .where(
                'grade.title',
                isEqualTo: widget.title,
              )
              .where(
                'judge',
                isEqualTo: currentUserReference,
              ),
          singleRecord: true,
        ).then((s) => s.firstOrNull);
        _model.initialValue = _model.rowToUpdateCopy?.grade.grade;
        safeSetState(() {});
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(
      () async {
        if (double.parse(_model.textController.text) > 0 &&
            double.parse(_model.textController.text) < 11) {
          _model.existsRow = await queryGradesRecordCount(
            queryBuilder: (gradesRecord) => gradesRecord
                .where(
                  'team',
                  isEqualTo: widget.teamId,
                )
                .where(
                  'category',
                  isEqualTo: widget.category,
                )
                .where(
                  'grade.title',
                  isEqualTo: widget.title,
                )
                .where(
                  'judge',
                  isEqualTo: currentUserReference,
                ),
          );
          if (_model.existsRow == 0) {
            await GradesRecord.collection.doc().set(createGradesRecordData(
                  team: widget.teamId,
                  category: widget.category,
                  grade: updateJudgeChoiceStruct(
                    JudgeChoiceStruct(
                      title: widget.title,
                      grade: double.parse(_model.textController.text),
                      weight: widget.weight,
                    ),
                    clearUnsetFields: false,
                    create: true,
                  ),
                  judge: currentUserReference,
                ));
          } else {
            _model.rowToUpdate = await queryGradesRecordOnce(
              queryBuilder: (gradesRecord) => gradesRecord
                  .where(
                    'team',
                    isEqualTo: widget.teamId,
                  )
                  .where(
                    'category',
                    isEqualTo: widget.category,
                  )
                  .where(
                    'grade.title',
                    isEqualTo: widget.title,
                  )
                  .where(
                    'judge',
                    isEqualTo: currentUserReference,
                  ),
              singleRecord: true,
            ).then((s) => s.firstOrNull);

            await _model.rowToUpdate!.reference.update(createGradesRecordData(
              grade: updateJudgeChoiceStruct(
                JudgeChoiceStruct(
                  title: widget.title,
                  grade: double.parse(_model.textController.text),
                  weight: widget.weight,
                ),
                clearUnsetFields: false,
              ),
            ));
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Value must be between 0 and 10.',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: const Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).alternate,
            ),
          );
        }

        safeSetState(() {});
      },
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          valueOrDefault<String>(
            widget.title,
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
            widget.description,
            'n/a',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                color: FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
              ),
        ),
        TextFormField(
          controller: _model.textController,
          focusNode: _model.textFieldFocusNode,
          autofocus: false,
          obscureText: false,
          decoration: InputDecoration(
            hintText: _model.initialValue != null
                ? _model.initialValue?.toString()
                : 'Enter score (0-10)',
            hintStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFE0E0E0),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          style: FlutterFlowTheme.of(context).bodyLarge.override(
                fontFamily: 'Readex Pro',
                letterSpacing: 0.0,
              ),
          minLines: 1,
          keyboardType: TextInputType.number,
          validator: _model.textControllerValidator.asValidator(context),
        ),
        Text(
          'Weight: ${widget.weight?.toString()}',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                color: FlutterFlowTheme.of(context).error,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
              ),
        ),
      ].divide(const SizedBox(height: 8.0)),
    );
  }
}
