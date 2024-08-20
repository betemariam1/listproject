import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_replies_model.dart';
export 'empty_replies_model.dart';

class EmptyRepliesWidget extends StatefulWidget {
  const EmptyRepliesWidget({
    super.key,
    required this.title,
    required this.desc,
  });

  final String? title;
  final String? desc;

  @override
  State<EmptyRepliesWidget> createState() => _EmptyRepliesWidgetState();
}

class _EmptyRepliesWidgetState extends State<EmptyRepliesWidget> {
  late EmptyRepliesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyRepliesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
      constraints: BoxConstraints(
        maxWidth: 670.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/forward_5031831.png',
              width: 90.0,
              height: 90.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.75,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Text(
                widget!.title!,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.8,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Text(
                  widget!.desc!,
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
