import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'q_r_code_join_team_model.dart';
export 'q_r_code_join_team_model.dart';

class QRCodeJoinTeamWidget extends StatefulWidget {
  const QRCodeJoinTeamWidget({super.key});

  @override
  State<QRCodeJoinTeamWidget> createState() => _QRCodeJoinTeamWidgetState();
}

class _QRCodeJoinTeamWidgetState extends State<QRCodeJoinTeamWidget> {
  late QRCodeJoinTeamModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QRCodeJoinTeamModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(
              0.0,
              -3.0,
            ),
          )
        ],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BarcodeWidget(
          data: 'https://flutterflow.io/',
          barcode: Barcode.qrCode(),
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          color: FlutterFlowTheme.of(context).primaryText,
          backgroundColor: Colors.transparent,
          errorBuilder: (context, error) => SizedBox(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
          ),
          drawText: true,
        ),
      ),
    );
  }
}
