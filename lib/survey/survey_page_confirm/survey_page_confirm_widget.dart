import '/backend/backend.dart';
import '/components/sign_in_component/sign_in_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'survey_page_confirm_model.dart';
export 'survey_page_confirm_model.dart';

class SurveyPageConfirmWidget extends StatefulWidget {
  const SurveyPageConfirmWidget({
    super.key,
    required this.userDocument,
  });

  final UsersRecord? userDocument;

  @override
  State<SurveyPageConfirmWidget> createState() =>
      _SurveyPageConfirmWidgetState();
}

class _SurveyPageConfirmWidgetState extends State<SurveyPageConfirmWidget> {
  late SurveyPageConfirmModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SurveyPageConfirmModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return MediaQuery.sizeOf(context).width;
                    } else if ((MediaQuery.sizeOf(context).width >
                            kBreakpointSmall) &&
                        (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium)) {
                      return MediaQuery.sizeOf(context).width;
                    } else if (MediaQuery.sizeOf(context).width >
                        kBreakpointMedium) {
                      return 550.0;
                    } else {
                      return 550.0;
                    }
                  }(),
                  height: MediaQuery.sizeOf(context).height * 0.55,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: valueOrDefault<Color>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            } else if ((MediaQuery.sizeOf(context).width >
                                    kBreakpointSmall) &&
                                (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium)) {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            } else if (MediaQuery.sizeOf(context).width >
                                kBreakpointMedium) {
                              return Color(0x4F000000);
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          Color(0x4F000000),
                        ),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(
                      color: valueOrDefault<Color>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return FlutterFlowTheme.of(context)
                                .secondaryBackground;
                          } else if ((MediaQuery.sizeOf(context).width >
                                  kBreakpointSmall) &&
                              (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium)) {
                            return FlutterFlowTheme.of(context)
                                .secondaryBackground;
                          } else if (MediaQuery.sizeOf(context).width >
                              kBreakpointMedium) {
                            return Color(0x00FFFFFF);
                          } else {
                            return FlutterFlowTheme.of(context)
                                .secondaryBackground;
                          }
                        }(),
                        Color(0x00FFFFFF),
                      ),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: Text(
                              'The List',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 35.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Powered by Academic Ballers',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 35.0, 0.0, 0.0),
                            child: Text(
                              'This is you?',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: Container(
                              width: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.85);
                                } else if ((MediaQuery.sizeOf(context).width >
                                        kBreakpointSmall) &&
                                    (MediaQuery.sizeOf(context).width <
                                        kBreakpointMedium)) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.85);
                                } else if (MediaQuery.sizeOf(context).width >
                                    kBreakpointLarge) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.25);
                                } else {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.85);
                                }
                              }(),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    '${valueOrDefault<String>(
                                      widget!.userDocument?.firstName,
                                      '-',
                                    )} ${widget!.userDocument?.lastName}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget!.userDocument?.email,
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ]
                                    .divide(SizedBox(height: 8.0))
                                    .addToStart(SizedBox(height: 8.0))
                                    .addToEnd(SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                          Container(
                            width: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return (MediaQuery.sizeOf(context).width *
                                    0.85);
                              } else if ((MediaQuery.sizeOf(context).width >
                                      kBreakpointSmall) &&
                                  (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium)) {
                                return (MediaQuery.sizeOf(context).width *
                                    0.85);
                              } else if (MediaQuery.sizeOf(context).width >
                                  kBreakpointLarge) {
                                return (MediaQuery.sizeOf(context).width *
                                    0.25);
                              } else {
                                return (MediaQuery.sizeOf(context).width *
                                    0.85);
                              }
                            }(),
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 25.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (() {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return true;
                                        } else if ((MediaQuery.sizeOf(context)
                                                    .width >
                                                kBreakpointSmall) &&
                                            (MediaQuery.sizeOf(context).width <
                                                kBreakpointMedium)) {
                                          return true;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width >
                                            kBreakpointMedium) {
                                          return false;
                                        } else {
                                          return true;
                                        }
                                      }()) {
                                        context.pushNamed(
                                          'signInComponentPage',
                                          queryParameters: {
                                            'email': serializeParam(
                                              widget!.userDocument?.email,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: GestureDetector(
                                                onTap: () =>
                                                    FocusScope.of(dialogContext)
                                                        .unfocus(),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.75,
                                                  child: SignInComponentWidget(
                                                    email: widget!
                                                        .userDocument?.email,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }
                                    },
                                    text: 'Confirm',
                                    options: FFButtonOptions(
                                      width: 150.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .fontColor,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
