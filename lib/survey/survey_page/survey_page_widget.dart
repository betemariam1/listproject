import '/components/loading_component/loading_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'survey_page_model.dart';
export 'survey_page_model.dart';

class SurveyPageWidget extends StatefulWidget {
  const SurveyPageWidget({
    super.key,
    this.email,
    this.id,
    this.username,
    required this.twitterUserID,
    this.forLogin,
  });

  final String? email;
  final String? id;
  final String? username;
  final String? twitterUserID;
  final bool? forLogin;

  @override
  State<SurveyPageWidget> createState() => _SurveyPageWidgetState();
}

class _SurveyPageWidgetState extends State<SurveyPageWidget> {
  late SurveyPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SurveyPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget!.username != null && widget!.username != '') {
        await showDialog(
          context: context,
          builder: (dialogContext) {
            return Dialog(
              elevation: 0,
              insetPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              alignment: AlignmentDirectional(0.0, 0.0)
                  .resolve(Directionality.of(context)),
              child: GestureDetector(
                onTap: () => FocusScope.of(dialogContext).unfocus(),
                child: LoadingComponentWidget(
                  email: widget!.email!,
                  twitterID: widget!.id!,
                  twitterUserName: widget!.username!,
                  forLogIn: widget!.forLogin!,
                ),
              ),
            );
          },
        );
      } else {
        return;
      }
    });

    _model.textFieldEmailTextController ??=
        TextEditingController(text: widget!.email);
    _model.textFieldEmailFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => GestureDetector(
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
                                  0.0, 15.0, 0.0, 0.0),
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
                                  0.0, 55.0, 0.0, 0.0),
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
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller:
                                          _model.textFieldEmailTextController,
                                      focusNode: _model.textFieldEmailFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.textFieldEmailTextController',
                                        Duration(milliseconds: 200),
                                        () => setState(() {}),
                                      ),
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Email',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.center,
                                      maxLines: null,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: _model
                                          .textFieldEmailTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            if (widget!.username == null ||
                                widget!.username == '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if ((_model.textFieldEmailTextController
                                                    .text !=
                                                null &&
                                            _model.textFieldEmailTextController
                                                    .text !=
                                                '') &&
                                        (_model.checkboxValue == true) &&
                                        functions.validateEmail(_model
                                            .textFieldEmailTextController
                                            .text)) {
                                      await launchURL(
                                          'https://twitter-passport.onrender.com/login/1/${_model.textFieldEmailTextController.text}/true/${widget!.twitterUserID}/false');
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Information Required'),
                                            content: Text(
                                                'Make sure to add a valid email and agree to terms and service to continue'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }
                                  },
                                  text: 'Connect Your X/Twitter Account',
                                  options: FFButtonOptions(
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.85);
                                      } else if ((MediaQuery.sizeOf(context)
                                                  .width >
                                              kBreakpointSmall) &&
                                          (MediaQuery.sizeOf(context).width <
                                              kBreakpointMedium)) {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.85);
                                      } else if (MediaQuery.sizeOf(context)
                                              .width >
                                          kBreakpointLarge) {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.25);
                                      } else {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.85);
                                      }
                                    }(),
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
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
                                decoration: BoxDecoration(),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(
                                        'https://www.showcaseballers.com/eula');
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                        ),
                                        child: Checkbox(
                                          value: _model.checkboxValue ??= false,
                                          onChanged: (newValue) async {
                                            setState(() => _model
                                                .checkboxValue = newValue!);
                                          },
                                          side: BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await launchURL(
                                                'https://www.showcaseballers.com/eula');
                                          },
                                          child: Text(
                                            'Agree to Terms and Privacy',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
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
      ),
    );
  }
}
