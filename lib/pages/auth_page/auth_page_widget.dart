import '/components/create_account_component/create_account_component_widget.dart';
import '/components/sign_in_component/sign_in_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'auth_page_model.dart';
export 'auth_page_model.dart';

class AuthPageWidget extends StatefulWidget {
  const AuthPageWidget({super.key});

  @override
  State<AuthPageWidget> createState() => _AuthPageWidgetState();
}

class _AuthPageWidgetState extends State<AuthPageWidget> {
  late AuthPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              if (responsiveVisibility(
                context: context,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 100.0, 0.0, 0.0),
                          child: Text(
                            'Academic Ballers',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 25.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width >
                                        kBreakpointMedium) {
                                      return 60.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width >
                                        kBreakpointLarge) {
                                      return 60.0;
                                    } else {
                                      return 25.0;
                                    }
                                  }(),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Text(
                            'Join today.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 22.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width >
                                        kBreakpointMedium) {
                                      return 35.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width >
                                        kBreakpointLarge) {
                                      return 35.0;
                                    } else {
                                      return 22.0;
                                    }
                                  }(),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (() {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return true;
                                  } else if ((MediaQuery.sizeOf(context).width >
                                          kBreakpointSmall) &&
                                      (MediaQuery.sizeOf(context).width <
                                          kBreakpointMedium)) {
                                    return true;
                                  } else if (MediaQuery.sizeOf(context).width >
                                      kBreakpointMedium) {
                                    return false;
                                  } else {
                                    return true;
                                  }
                                }()) {
                                  context.pushNamed(
                                    'createAccountComponentPage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
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
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.75,
                                          child: CreateAccountComponentWidget(),
                                        ),
                                      );
                                    },
                                  );
                                }
                              },
                              text: 'Create account',
                              icon: Icon(
                                Icons.add,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.65);
                                  } else if ((MediaQuery.sizeOf(context).width >
                                          kBreakpointSmall) &&
                                      (MediaQuery.sizeOf(context).width <
                                          kBreakpointMedium)) {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.55);
                                  } else if (MediaQuery.sizeOf(context).width >
                                      kBreakpointLarge) {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.22);
                                  } else {
                                    return (MediaQuery.sizeOf(context).width *
                                        0.65);
                                  }
                                }(),
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                ),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return (MediaQuery.sizeOf(context).width * 0.65);
                            } else if ((MediaQuery.sizeOf(context).width >
                                    kBreakpointSmall) &&
                                (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium)) {
                              return (MediaQuery.sizeOf(context).width * 0.55);
                            } else if (MediaQuery.sizeOf(context).width >
                                kBreakpointLarge) {
                              return (MediaQuery.sizeOf(context).width * 0.22);
                            } else {
                              return (MediaQuery.sizeOf(context).width * 0.65);
                            }
                          }(),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'By signing up, you agree to the ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                TextSpan(
                                  text: ' Terms of Service ',
                                  style: GoogleFonts.getFont(
                                    'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'and ',
                                  style: GoogleFonts.getFont(
                                    'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: GoogleFonts.getFont(
                                    'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: ', including ',
                                  style: GoogleFonts.getFont(
                                    'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Cookie Use.',
                                  style: GoogleFonts.getFont(
                                    'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 12.0,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: Text(
                            'Already have an account?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 18.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width >
                                        kBreakpointMedium) {
                                      return 25.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width >
                                        kBreakpointLarge) {
                                      return 25.0;
                                    } else {
                                      return 18.0;
                                    }
                                  }(),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Builder(
                          builder: (context) => FFButtonWidget(
                            onPressed: () async {
                              if (() {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return true;
                                } else if ((MediaQuery.sizeOf(context).width >
                                        kBreakpointSmall) &&
                                    (MediaQuery.sizeOf(context).width <
                                        kBreakpointMedium)) {
                                  return true;
                                } else if (MediaQuery.sizeOf(context).width >
                                    kBreakpointMedium) {
                                  return false;
                                } else {
                                  return true;
                                }
                              }()) {
                                context.pushNamed(
                                  'signInComponentPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
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
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.75,
                                        child: SignInComponentWidget(),
                                      ),
                                    );
                                  },
                                );
                              }
                            },
                            text: 'Sign in',
                            icon: Icon(
                              Icons.login,
                              size: 24.0,
                            ),
                            options: FFButtonOptions(
                              width: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.65);
                                } else if ((MediaQuery.sizeOf(context).width >
                                        kBreakpointSmall) &&
                                    (MediaQuery.sizeOf(context).width <
                                        kBreakpointMedium)) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.55);
                                } else if (MediaQuery.sizeOf(context).width >
                                    kBreakpointLarge) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.22);
                                } else {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.65);
                                }
                              }(),
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ]
                          .divide(SizedBox(height: 15.0))
                          .addToEnd(SizedBox(height: 25.0)),
                    ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.45,
                    height: MediaQuery.sizeOf(context).height * 0.55,
                    constraints: BoxConstraints(
                      maxWidth: 500.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x4F000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Academic Ballers',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    fontSize: 35.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Text(
                          'Join today.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Builder(
                          builder: (context) => FFButtonWidget(
                            onPressed: () async {
                              if (() {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return true;
                                } else if ((MediaQuery.sizeOf(context).width >
                                        kBreakpointSmall) &&
                                    (MediaQuery.sizeOf(context).width <
                                        kBreakpointMedium)) {
                                  return true;
                                } else if (MediaQuery.sizeOf(context).width >
                                    kBreakpointMedium) {
                                  return false;
                                } else {
                                  return true;
                                }
                              }()) {
                                context.pushNamed(
                                  'createAccountComponentPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
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
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.75,
                                        child: CreateAccountComponentWidget(),
                                      ),
                                    );
                                  },
                                );
                              }
                            },
                            text: 'Create account',
                            icon: Icon(
                              Icons.add,
                              size: 24.0,
                            ),
                            options: FFButtonOptions(
                              width: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.65);
                                } else if ((MediaQuery.sizeOf(context).width >
                                        kBreakpointSmall) &&
                                    (MediaQuery.sizeOf(context).width <
                                        kBreakpointMedium)) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.4);
                                } else if (MediaQuery.sizeOf(context).width >
                                    kBreakpointLarge) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.22);
                                } else {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.65);
                                }
                              }(),
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).lineColor,
                              ),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                        Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return (MediaQuery.sizeOf(context).width * 0.65);
                            } else if ((MediaQuery.sizeOf(context).width >
                                    kBreakpointSmall) &&
                                (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium)) {
                              return (MediaQuery.sizeOf(context).width * 0.4);
                            } else if (MediaQuery.sizeOf(context).width >
                                kBreakpointLarge) {
                              return (MediaQuery.sizeOf(context).width * 0.22);
                            } else {
                              return (MediaQuery.sizeOf(context).width * 0.65);
                            }
                          }(),
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'By signing up, you agree to the ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                TextSpan(
                                  text: ' Terms of Service ',
                                  style: GoogleFonts.getFont(
                                    'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'and ',
                                  style: GoogleFonts.getFont(
                                    'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: GoogleFonts.getFont(
                                    'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: ', including ',
                                  style: GoogleFonts.getFont(
                                    'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Cookie Use.',
                                  style: GoogleFonts.getFont(
                                    'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                        Text(
                          'Already have an account?',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Builder(
                          builder: (context) => FFButtonWidget(
                            onPressed: () async {
                              if (() {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return true;
                                } else if ((MediaQuery.sizeOf(context).width >
                                        kBreakpointSmall) &&
                                    (MediaQuery.sizeOf(context).width <
                                        kBreakpointMedium)) {
                                  return true;
                                } else if (MediaQuery.sizeOf(context).width >
                                    kBreakpointMedium) {
                                  return false;
                                } else {
                                  return true;
                                }
                              }()) {
                                context.pushNamed(
                                  'signInComponentPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
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
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.75,
                                        child: SignInComponentWidget(),
                                      ),
                                    );
                                  },
                                );
                              }
                            },
                            text: 'Sign in',
                            icon: Icon(
                              Icons.login,
                              size: 24.0,
                            ),
                            options: FFButtonOptions(
                              width: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.65);
                                } else if ((MediaQuery.sizeOf(context).width >
                                        kBreakpointSmall) &&
                                    (MediaQuery.sizeOf(context).width <
                                        kBreakpointMedium)) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.4);
                                } else if (MediaQuery.sizeOf(context).width >
                                    kBreakpointLarge) {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.22);
                                } else {
                                  return (MediaQuery.sizeOf(context).width *
                                      0.65);
                                }
                              }(),
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 25.0)),
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
