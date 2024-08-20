import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/promotion_component/promotion_component_widget.dart';
import '/components/submit_component/submit_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'survey_details_page_old_model.dart';
export 'survey_details_page_old_model.dart';

class SurveyDetailsPageOldWidget extends StatefulWidget {
  const SurveyDetailsPageOldWidget({
    super.key,
    required this.userDocument,
  });

  final DocumentReference? userDocument;

  @override
  State<SurveyDetailsPageOldWidget> createState() =>
      _SurveyDetailsPageOldWidgetState();
}

class _SurveyDetailsPageOldWidgetState extends State<SurveyDetailsPageOldWidget>
    with TickerProviderStateMixin {
  late SurveyDetailsPageOldModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SurveyDetailsPageOldModel());

    _model.textFieldFirstNameTextController ??= TextEditingController();
    _model.textFieldFirstNameFocusNode ??= FocusNode();

    _model.textFieldLastNameTextController ??= TextEditingController();
    _model.textFieldLastNameFocusNode ??= FocusNode();

    _model.textFieldWeightedGPA2FocusNode ??= FocusNode();

    _model.textFieldHighSchoolTextController ??= TextEditingController();
    _model.textFieldHighSchoolFocusNode ??= FocusNode();

    _model.textFieldCityTextController ??= TextEditingController();
    _model.textFieldCityFocusNode ??= FocusNode();

    _model.textFieldACTTotal22FocusNode ??= FocusNode();

    _model.textFieldSATTotal22FocusNode ??= FocusNode();

    _model.textFieldWeight44FocusNode ??= FocusNode();

    _model.textFieldHeightFeetFocusNode ??= FocusNode();

    _model.textFieldHeightInchesFocusNode ??= FocusNode();

    _model.textFieldFB4SVeloHighFocusNode ??= FocusNode();

    _model.textFieldFB4SVeloAverageFocusNode ??= FocusNode();

    _model.textFieldFB2SVeloHighFocusNode ??= FocusNode();

    _model.textFieldFB2SVeloAverageFocusNode ??= FocusNode();

    _model.textFieldSLVeloHighFocusNode ??= FocusNode();

    _model.textFieldSLVeloAverageFocusNode ??= FocusNode();

    _model.textFieldCHVeloHighFocusNode ??= FocusNode();

    _model.textFieldFBCHVeloAverageFocusNode ??= FocusNode();

    _model.textFieldCBVeloHighFocusNode ??= FocusNode();

    _model.textFieldCBVeloAverageFocusNode ??= FocusNode();

    _model.textField60TimeFocusNode ??= FocusNode();

    _model.textFieldEVFocusNode ??= FocusNode();

    _model.textFieldPopTimeTextController ??= TextEditingController();
    _model.textFieldPopTimeFocusNode ??= FocusNode();

    _model.textFieldFTOFFMoundTextController ??= TextEditingController();
    _model.textFieldFTOFFMoundFocusNode ??= FocusNode();

    _model.textFieldSearchTextController ??= TextEditingController();
    _model.textFieldSearchFocusNode ??= FocusNode();
    _model.textFieldSearchFocusNode!.addListener(() => setState(() {}));
    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1120.0.ms,
            begin: Offset(-46.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

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
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Container(
                  width: 200.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'The List',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            'Powered by Academic Ballers',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ].addToStart(SizedBox(height: 15.0)),
                      ),
                    ),
                  ),
                ),
              Container(
                width: () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return MediaQuery.sizeOf(context).width;
                  } else if ((MediaQuery.sizeOf(context).width >
                          kBreakpointSmall) &&
                      (MediaQuery.sizeOf(context).width < kBreakpointMedium)) {
                    return MediaQuery.sizeOf(context).width;
                  } else if (MediaQuery.sizeOf(context).width >
                      kBreakpointMedium) {
                    return (MediaQuery.sizeOf(context).width * 0.3);
                  } else {
                    return MediaQuery.sizeOf(context).width;
                  }
                }(),
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.settings_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 40.0,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'successSurveyPage2',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );
                                      },
                                      child: Text(
                                        'Information',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ],
                                ).animateOnPageLoad(
                                    animationsMap['rowOnPageLoadAnimation']!),
                                Container(
                                  width: 90.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF22C55E),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Builder(
                                    builder: (context) => FFButtonWidget(
                                      onPressed: () async {
                                        var _shouldSetState = false;
                                        if ((_model.dropDownGradYearValue !=
                                                    null &&
                                                _model
                                                        .dropDownGradYearValue !=
                                                    '') &&
                                            (_model.textFieldWeightedGPA2TextController
                                                        .text !=
                                                    null &&
                                                _model.textFieldWeightedGPA2TextController
                                                        .text !=
                                                    '') &&
                                            (_model.textFieldFirstNameTextController
                                                        .text !=
                                                    null &&
                                                _model.textFieldFirstNameTextController
                                                        .text !=
                                                    '') &&
                                            (_model.textFieldLastNameTextController
                                                        .text !=
                                                    null &&
                                                _model.textFieldLastNameTextController
                                                        .text !=
                                                    '')) {
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: GestureDetector(
                                                  onTap: () => FocusScope.of(
                                                          dialogContext)
                                                      .unfocus(),
                                                  child: Container(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.5,
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.45,
                                                    child:
                                                        SubmitComponentWidget(
                                                      submitAction: () async {
                                                        await widget!
                                                            .userDocument!
                                                            .update({
                                                          ...createUsersRecordData(
                                                            city: _model
                                                                .textFieldCityTextController
                                                                .text,
                                                            firstName: _model
                                                                .textFieldFirstNameTextController
                                                                .text,
                                                            lastName: _model
                                                                .textFieldLastNameTextController
                                                                .text,
                                                            selfReportedBattingEV:
                                                                _model
                                                                    .textFieldEVTextController
                                                                    .text,
                                                            selfReportedCBVeloAverage:
                                                                _model
                                                                    .textFieldCBVeloAverageTextController
                                                                    .text,
                                                            selfReportedCBVeloHigh:
                                                                _model
                                                                    .textFieldCBVeloHighTextController
                                                                    .text,
                                                            selfReportedCHVeloAverage:
                                                                _model
                                                                    .textFieldFBCHVeloAverageTextController
                                                                    .text,
                                                            selfReportedCHVeloHigh:
                                                                _model
                                                                    .textFieldCHVeloHighTextController
                                                                    .text,
                                                            selfReportedSLVeloAverage:
                                                                _model
                                                                    .textFieldSLVeloAverageTextController
                                                                    .text,
                                                            selfReportedSLVeloHigh:
                                                                _model
                                                                    .textFieldSLVeloHighTextController
                                                                    .text,
                                                            selfReportedFB2SVeloAverage:
                                                                _model
                                                                    .textFieldFB2SVeloAverageTextController
                                                                    .text,
                                                            selfReportedFB2SVeloHigh:
                                                                _model
                                                                    .textFieldFB2SVeloHighTextController
                                                                    .text,
                                                            selfReportedFB4SVeloHigh:
                                                                _model
                                                                    .textFieldFB4SVeloHighTextController
                                                                    .text,
                                                            selfReportedFB4SVeloAverage:
                                                                _model
                                                                    .textFieldFB4SVeloAverageTextController
                                                                    .text,
                                                            selfReportedTime60:
                                                                _model
                                                                    .textField60TimeTextController
                                                                    .text,
                                                            bat: _model
                                                                .dropDownBatValue,
                                                            primaryPosition: _model
                                                                .dropDownPrimaryPosValue,
                                                            secondaryPosition:
                                                                _model
                                                                    .dropDownSecondaryPosValue,
                                                            throw1: _model
                                                                .dropDownThrowValue,
                                                            heightInches: _model
                                                                .textFieldHeightInchesTextController
                                                                .text,
                                                            heightFeet: _model
                                                                .textFieldHeightFeetTextController
                                                                .text,
                                                            highSchool: _model
                                                                .textFieldHighSchoolTextController
                                                                .text,
                                                            selfReportedFTOffMound:
                                                                _model
                                                                    .textFieldFTOFFMoundTextController
                                                                    .text,
                                                            weight: _model
                                                                .textFieldWeight44TextController
                                                                .text,
                                                            selfReportedWeightedGPA:
                                                                _model
                                                                    .textFieldWeightedGPA2TextController
                                                                    .text,
                                                            selfReportedACTTotal:
                                                                _model
                                                                    .textFieldACTTotal22TextController
                                                                    .text,
                                                            selfReportedSATTotal:
                                                                _model
                                                                    .textFieldSATTotal22TextController
                                                                    .text,
                                                            isTakingACT: _model
                                                                .istakingACT,
                                                            isTakingSAT: _model
                                                                .istakingSAT,
                                                            selfReportedGPA: _model
                                                                .textFieldWeightedGPA2TextController
                                                                .text,
                                                            graduationYear: _model
                                                                .dropDownGradYearValue,
                                                            selfReportedPopTime:
                                                                _model
                                                                    .textFieldPopTimeTextController
                                                                    .text,
                                                            playerSelectedSport:
                                                                _model
                                                                    .dropDownSportTypeValue,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'fav_colleges': _model
                                                                  .selectedCollegesList,
                                                            },
                                                          ),
                                                        });
                                                        _model.getAdminsCopy =
                                                            await queryUsersRecordOnce(
                                                          queryBuilder:
                                                              (usersRecord) =>
                                                                  usersRecord
                                                                      .where(
                                                            'userrole',
                                                            isEqualTo: 'Admin',
                                                          ),
                                                        );

                                                        context.goNamed(
                                                          'successSurveyPage2',
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                            ),
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        } else {
                                          if (() {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return true;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width >
                                                kBreakpointMedium) {
                                              return false;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width >
                                                kBreakpointLarge) {
                                              return false;
                                            } else {
                                              return false;
                                            }
                                          }()) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Make sure you fill out the first 5 fields that have \"*\" next to them in the \"Personal\" tab',
                                                  style: GoogleFonts.getFont(
                                                    'Outfit',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 12.0,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 3000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                              ),
                                            );
                                            if (_shouldSetState)
                                              setState(() {});
                                            return;
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text(
                                                      'Required Fields Missing'),
                                                  content: Text(
                                                      'Make sure you fill out the first 5 fields that have \"*\" next to them in the \"Personal\" tab'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                            if (_shouldSetState)
                                              setState(() {});
                                            return;
                                          }
                                        }

                                        if (_shouldSetState) setState(() {});
                                      },
                                      text: 'Save',
                                      options: FFButtonOptions(
                                        width: 90.0,
                                        height: 30.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF22C55E),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: StreamBuilder<UsersRecord>(
                        stream: UsersRecord.getDocument(widget!.userDocument!),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).secondaryText,
                                  ),
                                ),
                              ),
                            );
                          }

                          final containerUsersRecord = snapshot.data!;

                          return Container(
                            height: MediaQuery.sizeOf(context).height * 0.9,
                            decoration: BoxDecoration(),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 10.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        child: ListView(
                                          padding: EdgeInsets.fromLTRB(
                                            10.0,
                                            0,
                                            0,
                                            0,
                                          ),
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.selectedOption =
                                                    'Personal';
                                                setState(() {});
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Personal',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              _model.selectedOption ==
                                                                      'Personal'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryText,
                                                            ),
                                                            fontSize:
                                                                _model.selectedOption ==
                                                                        'Personal'
                                                                    ? 15.0
                                                                    : 14.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 100.0,
                                                    height: 3.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          valueOrDefault<Color>(
                                                        _model.selectedOption ==
                                                                'Personal'
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.selectedOption =
                                                    'Performance';
                                                setState(() {});
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Performance',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              _model.selectedOption ==
                                                                      'Performance'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                            ),
                                                            fontSize: _model
                                                                        .selectedOption ==
                                                                    'Performance'
                                                                ? 15.0
                                                                : 14.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 100.0,
                                                    height: 3.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          valueOrDefault<Color>(
                                                        _model.selectedOption ==
                                                                'Performance'
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.selectedOption =
                                                    'Baseball';
                                                setState(() {});
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Baseball',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              _model.selectedOption ==
                                                                      'Baseball'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryText,
                                                            ),
                                                            fontSize:
                                                                _model.selectedOption ==
                                                                        'Baseball'
                                                                    ? 15.0
                                                                    : 14.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 100.0,
                                                    height: 3.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          valueOrDefault<Color>(
                                                        _model.selectedOption ==
                                                                'Baseball'
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.selectedOption =
                                                    'College';
                                                setState(() {});
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'College',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              _model
                                                                          .selectedOption ==
                                                                      'College'
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryText,
                                                            ),
                                                            fontSize:
                                                                _model.selectedOption ==
                                                                        'College'
                                                                    ? 15.0
                                                                    : 14.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 100.0,
                                                    height: 3.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          valueOrDefault<Color>(
                                                        _model.selectedOption ==
                                                                'College'
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (_model.selectedOption == 'Baseball')
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.25);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  }
                                                }(),
                                                height: 140.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  20.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  20.0),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 25.0,
                                                              height: 25.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2Fthrow%20icon.png?alt=media&token=9704495d-0ebf-41b4-ae8e-a1750a86f39c',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  'Throw',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 5.0)),
                                                            ),
                                                          ),
                                                        ]
                                                            .addToStart(
                                                                SizedBox(
                                                                    width: 5.0))
                                                            .addToEnd(SizedBox(
                                                                width: 5.0)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  15.0,
                                                                  0.0,
                                                                  15.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Container(
                                                            width: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.70);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  kBreakpointMedium) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.20);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  kBreakpointLarge) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.20);
                                                              } else {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.70);
                                                              }
                                                            }(),
                                                            height: 50.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                              ),
                                                            ),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    String>(
                                                              controller: _model
                                                                      .dropDownThrowValueController ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model.dropDownThrowValue ??=
                                                                    containerUsersRecord
                                                                        .throw1,
                                                              ),
                                                              options: [
                                                                'Right',
                                                                'Left',
                                                                'Switch'
                                                              ],
                                                              onChanged:
                                                                  (val) async {
                                                                setState(() =>
                                                                    _model.dropDownThrowValue =
                                                                        val);
                                                                FFAppState()
                                                                    .update(
                                                                        () {});
                                                              },
                                                              width: 162.0,
                                                              height: 127.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              hintText:
                                                                  'Select',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              elevation: 8.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 0.0,
                                                              borderRadius: 4.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.25);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  }
                                                }(),
                                                height: 140.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  20.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  20.0),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 25.0,
                                                              height: 25.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F7.png?alt=media&token=8f311c39-c13d-4700-b5bc-9ec89b5ab850',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  'Bat',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 5.0)),
                                                            ),
                                                          ),
                                                        ]
                                                            .addToStart(
                                                                SizedBox(
                                                                    width: 5.0))
                                                            .addToEnd(SizedBox(
                                                                width: 5.0)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  15.0,
                                                                  0.0,
                                                                  15.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Container(
                                                            width: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.70);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  kBreakpointMedium) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.20);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  kBreakpointLarge) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.20);
                                                              } else {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.70);
                                                              }
                                                            }(),
                                                            height: 50.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                              ),
                                                            ),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    String>(
                                                              controller: _model
                                                                      .dropDownBatValueController ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model.dropDownBatValue ??=
                                                                    containerUsersRecord
                                                                        .bat,
                                                              ),
                                                              options: [
                                                                'Right',
                                                                'Left',
                                                                'Switch'
                                                              ],
                                                              onChanged:
                                                                  (val) async {
                                                                setState(() =>
                                                                    _model.dropDownBatValue =
                                                                        val);
                                                                FFAppState()
                                                                    .update(
                                                                        () {});
                                                              },
                                                              width: 162.0,
                                                              height: 127.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              hintText:
                                                                  'Select',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              elevation: 8.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 0.0,
                                                              borderRadius: 4.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.25);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  }
                                                }(),
                                                height: 140.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  20.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  20.0),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 25.0,
                                                              height: 25.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F4.png?alt=media&token=6b1d566d-efbf-46b2-9bd5-22d86a7314dd',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  'Primary Position',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 5.0)),
                                                            ),
                                                          ),
                                                        ]
                                                            .addToStart(
                                                                SizedBox(
                                                                    width: 5.0))
                                                            .addToEnd(SizedBox(
                                                                width: 5.0)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  15.0,
                                                                  0.0,
                                                                  15.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Container(
                                                            width: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.70);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  kBreakpointMedium) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.20);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  kBreakpointLarge) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.20);
                                                              } else {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.70);
                                                              }
                                                            }(),
                                                            height: 50.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                              ),
                                                            ),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    String>(
                                                              controller: _model
                                                                      .dropDownPrimaryPosValueController ??=
                                                                  FormFieldController<
                                                                          String>(
                                                                      null),
                                                              options: [
                                                                'RHP',
                                                                'LHP',
                                                                '1st',
                                                                '2nd',
                                                                '3rd',
                                                                'SS',
                                                                'C',
                                                                'LF',
                                                                'CF',
                                                                'RF',
                                                                'MIF'
                                                              ],
                                                              onChanged:
                                                                  (val) async {
                                                                setState(() =>
                                                                    _model.dropDownPrimaryPosValue =
                                                                        val);
                                                                FFAppState()
                                                                    .update(
                                                                        () {});
                                                              },
                                                              width: 162.0,
                                                              height: 127.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              hintText:
                                                                  'Select',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              elevation: 8.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 0.0,
                                                              borderRadius: 4.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 85.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Container(
                                                  width: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.85);
                                                    } else if ((MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width >
                                                            kBreakpointSmall) &&
                                                        (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointMedium)) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.85);
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width >
                                                        kBreakpointLarge) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.25);
                                                    } else {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.85);
                                                    }
                                                  }(),
                                                  height: 140.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20.0),
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                      topLeft:
                                                          Radius.circular(20.0),
                                                      topRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                    border: Border.all(
                                                      color: Color(0xFFCCCCCC),
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F4.png?alt=media&token=6b1d566d-efbf-46b2-9bd5-22d86a7314dd',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'Secondary Position',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.70);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointMedium) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.20);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointLarge) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.20);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.70);
                                                                }
                                                              }(),
                                                              height: 50.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                              ),
                                                              child:
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                controller: _model
                                                                        .dropDownSecondaryPosValueController ??=
                                                                    FormFieldController<
                                                                            String>(
                                                                        null),
                                                                options: [
                                                                  'RHP',
                                                                  'LHP',
                                                                  '1st',
                                                                  '2nd',
                                                                  '3rd',
                                                                  'SS',
                                                                  'C',
                                                                  'LF',
                                                                  'CF',
                                                                  'RF',
                                                                  'MIF'
                                                                ],
                                                                onChanged:
                                                                    (val) async {
                                                                  setState(() =>
                                                                      _model.dropDownSecondaryPosValue =
                                                                          val);
                                                                  FFAppState()
                                                                      .update(
                                                                          () {});
                                                                },
                                                                width: 162.0,
                                                                height: 127.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    'Select',
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                elevation: 8.0,
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    4.0,
                                                                margin: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 15.0)),
                                    ),
                                  if (_model.selectedOption == 'Personal')
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.25);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  }
                                                }(),
                                                height: 140.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  20.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  20.0),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 25.0,
                                                              height: 25.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F10.png?alt=media&token=4778adcc-d902-4a67-9429-ed20398d749f',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  'First Name *',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 5.0)),
                                                            ),
                                                          ),
                                                        ]
                                                            .addToStart(
                                                                SizedBox(
                                                                    width: 5.0))
                                                            .addToEnd(SizedBox(
                                                                width: 5.0)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  15.0,
                                                                  0.0,
                                                                  15.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Container(
                                                            width: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.70);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  kBreakpointMedium) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.20);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  kBreakpointLarge) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.20);
                                                              } else {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.70);
                                                              }
                                                            }(),
                                                            decoration:
                                                                BoxDecoration(
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textFieldFirstNameTextController,
                                                                  focusNode: _model
                                                                      .textFieldFirstNameFocusNode,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    '_model.textFieldFirstNameTextController',
                                                                    Duration(
                                                                        milliseconds:
                                                                            200),
                                                                    () => setState(
                                                                        () {}),
                                                                  ),
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    focusedBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    errorBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    focusedErrorBorder:
                                                                        InputBorder
                                                                            .none,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  maxLines:
                                                                      null,
                                                                  validator: _model
                                                                      .textFieldFirstNameTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.25);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  }
                                                }(),
                                                height: 140.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  20.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  20.0),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 25.0,
                                                              height: 25.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F10.png?alt=media&token=4778adcc-d902-4a67-9429-ed20398d749f',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  'Last Name *',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 5.0)),
                                                            ),
                                                          ),
                                                        ]
                                                            .addToStart(
                                                                SizedBox(
                                                                    width: 5.0))
                                                            .addToEnd(SizedBox(
                                                                width: 5.0)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  15.0,
                                                                  0.0,
                                                                  15.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Container(
                                                            width: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.70);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  kBreakpointMedium) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.20);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  kBreakpointLarge) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.20);
                                                              } else {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.70);
                                                              }
                                                            }(),
                                                            decoration:
                                                                BoxDecoration(
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textFieldLastNameTextController,
                                                                  focusNode: _model
                                                                      .textFieldLastNameFocusNode,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    '_model.textFieldLastNameTextController',
                                                                    Duration(
                                                                        milliseconds:
                                                                            200),
                                                                    () => setState(
                                                                        () {}),
                                                                  ),
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    focusedBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    errorBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    focusedErrorBorder:
                                                                        InputBorder
                                                                            .none,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  maxLines:
                                                                      null,
                                                                  validator: _model
                                                                      .textFieldLastNameTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.25);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  20.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  20.0),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 25.0,
                                                              height: 25.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F17.png?alt=media&token=1ea46034-3e03-4b8c-9626-6641ec2175d4',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  'Graduation Year *',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 5.0)),
                                                            ),
                                                          ),
                                                        ]
                                                            .addToStart(
                                                                SizedBox(
                                                                    width: 5.0))
                                                            .addToEnd(SizedBox(
                                                                width: 5.0)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  15.0,
                                                                  0.0,
                                                                  15.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Container(
                                                            width: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.70);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  kBreakpointMedium) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.20);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  kBreakpointLarge) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.20);
                                                              } else {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.70);
                                                              }
                                                            }(),
                                                            height: 50.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                              ),
                                                            ),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    String>(
                                                              controller: _model
                                                                      .dropDownGradYearValueController ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model.dropDownGradYearValue ??=
                                                                    containerUsersRecord
                                                                        .graduationYear,
                                                              ),
                                                              options: functions
                                                                  .graduation(),
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      _model.dropDownGradYearValue =
                                                                          val),
                                                              width: 162.0,
                                                              height: 127.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              hintText:
                                                                  'Select',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              elevation: 8.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 0.0,
                                                              borderRadius: 4.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.25);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Form(
                                                  key: _model.formKey19,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F11.png?alt=media&token=57010244-5881-42c2-bce5-66b226e5c94c',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'Weighted GPA *',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.70);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointMedium) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.20);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointLarge) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.20);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.70);
                                                                }
                                                              }(),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.textFieldWeightedGPA2TextController ??=
                                                                            TextEditingController(
                                                                      text: containerUsersRecord
                                                                          .selfReportedWeightedGPA,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldWeightedGPA2FocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textFieldWeightedGPA2TextController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines:
                                                                        null,
                                                                    keyboardType: const TextInputType
                                                                        .numberWithOptions(
                                                                        decimal:
                                                                            true),
                                                                    validator: _model
                                                                        .textFieldWeightedGPA2TextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.25);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  20.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  20.0),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 25.0,
                                                              height: 25.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/academic-ballers-vkrtqe/assets/6bp5vzt257bj/baseball.png',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  'Sport Type *',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 5.0)),
                                                            ),
                                                          ),
                                                        ]
                                                            .addToStart(
                                                                SizedBox(
                                                                    width: 5.0))
                                                            .addToEnd(SizedBox(
                                                                width: 5.0)),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  15.0,
                                                                  0.0,
                                                                  15.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Container(
                                                            width: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.70);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  kBreakpointMedium) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.20);
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width >
                                                                  kBreakpointLarge) {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.20);
                                                              } else {
                                                                return (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.70);
                                                              }
                                                            }(),
                                                            height: 50.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                              ),
                                                            ),
                                                            child:
                                                                FlutterFlowDropDown<
                                                                    String>(
                                                              controller: _model
                                                                      .dropDownSportTypeValueController ??=
                                                                  FormFieldController<
                                                                      String>(
                                                                _model.dropDownSportTypeValue ??=
                                                                    'Baseball',
                                                              ),
                                                              options: [
                                                                'Baseball',
                                                                'Softball'
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      _model.dropDownSportTypeValue =
                                                                          val),
                                                              width: 162.0,
                                                              height: 127.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              hintText:
                                                                  'Select',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              elevation: 8.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 0.0,
                                                              borderRadius: 4.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                              hidesUnderline:
                                                                  true,
                                                              isSearchable:
                                                                  false,
                                                              isMultiSelect:
                                                                  false,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              width: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.85);
                                                } else if ((MediaQuery.sizeOf(
                                                                context)
                                                            .width >
                                                        kBreakpointSmall) &&
                                                    (MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium)) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.85);
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width >
                                                    kBreakpointLarge) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.25);
                                                } else {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.85);
                                                }
                                              }(),
                                              height: 140.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20.0),
                                                  bottomRight:
                                                      Radius.circular(20.0),
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight:
                                                      Radius.circular(20.0),
                                                ),
                                                border: Border.all(
                                                  color: Color(0xFFCCCCCC),
                                                  width: 0.5,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        topRight:
                                                            Radius.circular(
                                                                20.0),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 25.0,
                                                            height: 25.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                Image.network(
                                                              'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F8.png?alt=media&token=421906c5-837e-4765-be57-fec2ada529d5',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                'High School',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 5.0)),
                                                          ),
                                                        ),
                                                      ]
                                                          .addToStart(SizedBox(
                                                              width: 5.0))
                                                          .addToEnd(SizedBox(
                                                              width: 5.0)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 15.0,
                                                                0.0, 15.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          width: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.70);
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width >
                                                                kBreakpointMedium) {
                                                              return (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.20);
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width >
                                                                kBreakpointLarge) {
                                                              return (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.20);
                                                            } else {
                                                              return (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.70);
                                                            }
                                                          }(),
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .lineColor,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .textFieldHighSchoolTextController,
                                                                focusNode: _model
                                                                    .textFieldHighSchoolFocusNode,
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  '_model.textFieldHighSchoolTextController',
                                                                  Duration(
                                                                      milliseconds:
                                                                          200),
                                                                  () => setState(
                                                                      () {}),
                                                                ),
                                                                autofocus:
                                                                    false,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  errorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedErrorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                maxLines: null,
                                                                validator: _model
                                                                    .textFieldHighSchoolTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              width: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.85);
                                                } else if ((MediaQuery.sizeOf(
                                                                context)
                                                            .width >
                                                        kBreakpointSmall) &&
                                                    (MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium)) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.85);
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width >
                                                    kBreakpointLarge) {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.25);
                                                } else {
                                                  return (MediaQuery.sizeOf(
                                                              context)
                                                          .width *
                                                      0.85);
                                                }
                                              }(),
                                              height: 140.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20.0),
                                                  bottomRight:
                                                      Radius.circular(20.0),
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight:
                                                      Radius.circular(20.0),
                                                ),
                                                border: Border.all(
                                                  color: Color(0xFFCCCCCC),
                                                  width: 0.5,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        topRight:
                                                            Radius.circular(
                                                                20.0),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 25.0,
                                                            height: 25.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                Image.network(
                                                              'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2Fcity%20icon.png?alt=media&token=0c76290c-e4b5-4a62-a3b0-bd0e129ea1d6',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                'City',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 5.0)),
                                                          ),
                                                        ),
                                                      ]
                                                          .addToStart(SizedBox(
                                                              width: 5.0))
                                                          .addToEnd(SizedBox(
                                                              width: 5.0)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 15.0,
                                                                0.0, 15.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          width: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.70);
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width >
                                                                kBreakpointMedium) {
                                                              return (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.20);
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width >
                                                                kBreakpointLarge) {
                                                              return (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.20);
                                                            } else {
                                                              return (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.70);
                                                            }
                                                          }(),
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .lineColor,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .textFieldCityTextController,
                                                                focusNode: _model
                                                                    .textFieldCityFocusNode,
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  '_model.textFieldCityTextController',
                                                                  Duration(
                                                                      milliseconds:
                                                                          200),
                                                                  () => setState(
                                                                      () {}),
                                                                ),
                                                                autofocus:
                                                                    false,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  errorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedErrorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                maxLines: null,
                                                                validator: _model
                                                                    .textFieldCityTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.25);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Form(
                                                  key: _model.formKey7,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        constraints:
                                                            BoxConstraints(
                                                          minHeight: 40.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2FACT.png?alt=media&token=67b302c0-3cdd-4dd9-9cca-395b8e01cda0',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'ACT',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    'Total (Click the box if you are taking SAT)',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        2.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.50);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointMedium) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.15);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointLarge) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.15);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.5);
                                                                }
                                                              }(),
                                                              constraints:
                                                                  BoxConstraints(
                                                                minHeight: 50.0,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  _model.istakingACT
                                                                      ? Color(
                                                                          0xFFE0E0E0)
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                              ),
                                                              child: Stack(
                                                                children: [
                                                                  if (!_model
                                                                      .istakingACT)
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            TextFormField(
                                                                          controller: _model.textFieldACTTotal22TextController ??=
                                                                              TextEditingController(
                                                                            text:
                                                                                containerUsersRecord.selfReportedACTTotal,
                                                                          ),
                                                                          focusNode:
                                                                              _model.textFieldACTTotal22FocusNode,
                                                                          onChanged: (_) =>
                                                                              EasyDebounce.debounce(
                                                                            '_model.textFieldACTTotal22TextController',
                                                                            Duration(milliseconds: 200),
                                                                            () =>
                                                                                setState(() {}),
                                                                          ),
                                                                          autofocus:
                                                                              false,
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            enabledBorder:
                                                                                InputBorder.none,
                                                                            focusedBorder:
                                                                                InputBorder.none,
                                                                            errorBorder:
                                                                                InputBorder.none,
                                                                            focusedErrorBorder:
                                                                                InputBorder.none,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          maxLines:
                                                                              null,
                                                                          keyboardType: const TextInputType
                                                                              .numberWithOptions(
                                                                              decimal: true),
                                                                          validator: _model
                                                                              .textFieldACTTotal22TextControllerValidator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  if (_model
                                                                      .istakingACT)
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            15.0,
                                                                            0.0,
                                                                            15.0),
                                                                        child:
                                                                            Text(
                                                                          'Taking SAT',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: valueOrDefault<Color>(
                                                                                  _model.istakingACT ? FlutterFlowTheme.of(context).primaryText : FlutterFlowTheme.of(context).primaryBackground,
                                                                                  FlutterFlowTheme.of(context).primaryBackground,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                            Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  visualDensity:
                                                                      VisualDensity
                                                                          .compact,
                                                                  materialTapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              child: Checkbox(
                                                                value: _model
                                                                        .checkboxValue1 ??=
                                                                    false,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.checkboxValue1 =
                                                                          newValue!);
                                                                  if (newValue!) {
                                                                    _model.istakingACT =
                                                                        true;
                                                                    setState(
                                                                        () {});
                                                                  } else {
                                                                    _model.istakingACT =
                                                                        false;
                                                                    setState(
                                                                        () {});
                                                                  }
                                                                },
                                                                side:
                                                                    BorderSide(
                                                                  width: 2,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                checkColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.25);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.85);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Form(
                                                  key: _model.formKey4,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        constraints:
                                                            BoxConstraints(
                                                          minHeight: 40.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2FSAT.png?alt=media&token=fe709684-7284-430b-b034-171bb85f5643',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'SAT',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    'Total (Click the box if you are taking ACT)',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        2.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            AuthUserStreamWidget(
                                                              builder:
                                                                  (context) =>
                                                                      Container(
                                                                width: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.50);
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >
                                                                      kBreakpointMedium) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.15);
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >
                                                                      kBreakpointLarge) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.15);
                                                                  } else {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.5);
                                                                  }
                                                                }(),
                                                                constraints:
                                                                    BoxConstraints(
                                                                  minHeight:
                                                                      50.0,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    valueOrDefault<bool>(
                                                                            currentUserDocument
                                                                                ?.isTakingSAT,
                                                                            false)
                                                                        ? Color(
                                                                            0xFFE0E0E0)
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                ),
                                                                child: Stack(
                                                                  children: [
                                                                    if (!valueOrDefault<
                                                                            bool>(
                                                                        currentUserDocument
                                                                            ?.isTakingSAT,
                                                                        false))
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              TextFormField(
                                                                            controller: _model.textFieldSATTotal22TextController ??=
                                                                                TextEditingController(
                                                                              text: containerUsersRecord.selfReportedSATTotal,
                                                                            ),
                                                                            focusNode:
                                                                                _model.textFieldSATTotal22FocusNode,
                                                                            onChanged: (_) =>
                                                                                EasyDebounce.debounce(
                                                                              '_model.textFieldSATTotal22TextController',
                                                                              Duration(milliseconds: 200),
                                                                              () => setState(() {}),
                                                                            ),
                                                                            autofocus:
                                                                                false,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              enabledBorder: InputBorder.none,
                                                                              focusedBorder: InputBorder.none,
                                                                              errorBorder: InputBorder.none,
                                                                              focusedErrorBorder: InputBorder.none,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            maxLines:
                                                                                null,
                                                                            keyboardType:
                                                                                const TextInputType.numberWithOptions(decimal: true),
                                                                            validator:
                                                                                _model.textFieldSATTotal22TextControllerValidator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (valueOrDefault<
                                                                            bool>(
                                                                        currentUserDocument
                                                                            ?.isTakingSAT,
                                                                        false))
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              15.0,
                                                                              0.0,
                                                                              15.0),
                                                                          child:
                                                                              Text(
                                                                            'Taking ACT',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: valueOrDefault<Color>(
                                                                                    valueOrDefault<bool>(currentUserDocument?.isTakingSAT, false) ? FlutterFlowTheme.of(context).primaryText : FlutterFlowTheme.of(context).primaryBackground,
                                                                                    FlutterFlowTheme.of(context).primaryBackground,
                                                                                  ),
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  visualDensity:
                                                                      VisualDensity
                                                                          .compact,
                                                                  materialTapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              child: Checkbox(
                                                                value: _model
                                                                        .checkboxValue2 ??=
                                                                    false,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.checkboxValue2 =
                                                                          newValue!);
                                                                  if (newValue!) {
                                                                    _model.istakingSAT =
                                                                        true;
                                                                    setState(
                                                                        () {});
                                                                  } else {
                                                                    _model.istakingSAT =
                                                                        false;
                                                                    setState(
                                                                        () {});
                                                                  }
                                                                },
                                                                side:
                                                                    BorderSide(
                                                                  width: 2,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                checkColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Form(
                                              key: _model.formKey9,
                                              autovalidateMode:
                                                  AutovalidateMode.always,
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Container(
                                                  width: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.85);
                                                    } else if ((MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width >
                                                            kBreakpointSmall) &&
                                                        (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointMedium)) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.85);
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width >
                                                        kBreakpointLarge) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.25);
                                                    } else {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.85);
                                                    }
                                                  }(),
                                                  constraints: BoxConstraints(
                                                    minHeight: 140.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20.0),
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                      topLeft:
                                                          Radius.circular(20.0),
                                                      topRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                    border: Border.all(
                                                      color: Color(0xFFCCCCCC),
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2Flbs_icon.png?alt=media&token=54c48889-6b04-4af9-8692-eb468199aa73',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'Weight',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.70);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointMedium) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.20);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointLarge) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.20);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.70);
                                                                }
                                                              }(),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.textFieldWeight44TextController ??=
                                                                            TextEditingController(
                                                                      text: containerUsersRecord
                                                                          .weight,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldWeight44FocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textFieldWeight44TextController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines:
                                                                        null,
                                                                    keyboardType: const TextInputType
                                                                        .numberWithOptions(
                                                                        decimal:
                                                                            true),
                                                                    validator: _model
                                                                        .textFieldWeight44TextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 85.0),
                                          child: Container(
                                            width: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return (MediaQuery.sizeOf(
                                                            context)
                                                        .width *
                                                    0.85);
                                              } else if ((MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointSmall) &&
                                                  (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointMedium)) {
                                                return (MediaQuery.sizeOf(
                                                            context)
                                                        .width *
                                                    0.85);
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width >
                                                  kBreakpointLarge) {
                                                return (MediaQuery.sizeOf(
                                                            context)
                                                        .width *
                                                    0.25);
                                              } else {
                                                return (MediaQuery.sizeOf(
                                                            context)
                                                        .width *
                                                    0.85);
                                              }
                                            }(),
                                            decoration: BoxDecoration(),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.40);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width >
                                                          kBreakpointMedium) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.12);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width >
                                                          kBreakpointLarge) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.12);
                                                      } else {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.40);
                                                      }
                                                    }(),
                                                    constraints: BoxConstraints(
                                                      minHeight: 140.0,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                20.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        topRight:
                                                            Radius.circular(
                                                                20.0),
                                                      ),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFCCCCCC),
                                                        width: 0.5,
                                                      ),
                                                    ),
                                                    child: Form(
                                                      key: _model.formKey15,
                                                      autovalidateMode:
                                                          AutovalidateMode
                                                              .always,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        20.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        20.0),
                                                              ),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: 25.0,
                                                                    height:
                                                                        25.0,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F9.png?alt=media&token=a96420ed-43ff-4510-9e19-20684526a4e1',
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Height Feet',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            5.0)),
                                                                  ),
                                                                ),
                                                              ]
                                                                  .addToStart(
                                                                      SizedBox(
                                                                          width:
                                                                              5.0))
                                                                  .addToEnd(
                                                                      SizedBox(
                                                                          width:
                                                                              5.0)),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        0.0,
                                                                        15.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceAround,
                                                              children: [
                                                                Container(
                                                                  width: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return (MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.35);
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointMedium) {
                                                                      return (MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.1);
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointLarge) {
                                                                      return (MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.1);
                                                                    } else {
                                                                      return (MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.35);
                                                                    }
                                                                  }(),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .lineColor,
                                                                    ),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.textFieldHeightFeetTextController ??=
                                                                                TextEditingController(
                                                                          text:
                                                                              containerUsersRecord.heightFeet,
                                                                        ),
                                                                        focusNode:
                                                                            _model.textFieldHeightFeetFocusNode,
                                                                        onChanged:
                                                                            (_) =>
                                                                                EasyDebounce.debounce(
                                                                          '_model.textFieldHeightFeetTextController',
                                                                          Duration(
                                                                              milliseconds: 200),
                                                                          () =>
                                                                              setState(() {}),
                                                                        ),
                                                                        autofocus:
                                                                            false,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          enabledBorder:
                                                                              InputBorder.none,
                                                                          focusedBorder:
                                                                              InputBorder.none,
                                                                          errorBorder:
                                                                              InputBorder.none,
                                                                          focusedErrorBorder:
                                                                              InputBorder.none,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            null,
                                                                        keyboardType: const TextInputType
                                                                            .numberWithOptions(
                                                                            decimal:
                                                                                true),
                                                                        validator: _model
                                                                            .textFieldHeightFeetTextControllerValidator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.40);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width >
                                                          kBreakpointMedium) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.12);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width >
                                                          kBreakpointLarge) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.12);
                                                      } else {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.40);
                                                      }
                                                    }(),
                                                    constraints: BoxConstraints(
                                                      minHeight: 140.0,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                20.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        topRight:
                                                            Radius.circular(
                                                                20.0),
                                                      ),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFCCCCCC),
                                                        width: 0.5,
                                                      ),
                                                    ),
                                                    child: Form(
                                                      key: _model.formKey16,
                                                      autovalidateMode:
                                                          AutovalidateMode
                                                              .always,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        20.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        20.0),
                                                              ),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: 25.0,
                                                                    height:
                                                                        25.0,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F9.png?alt=media&token=a96420ed-43ff-4510-9e19-20684526a4e1',
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        'Height Inches',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            5.0)),
                                                                  ),
                                                                ),
                                                              ]
                                                                  .addToStart(
                                                                      SizedBox(
                                                                          width:
                                                                              5.0))
                                                                  .addToEnd(
                                                                      SizedBox(
                                                                          width:
                                                                              5.0)),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        0.0,
                                                                        15.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceAround,
                                                              children: [
                                                                Container(
                                                                  width: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return (MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.35);
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointMedium) {
                                                                      return (MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.1);
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width >
                                                                        kBreakpointLarge) {
                                                                      return (MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.1);
                                                                    } else {
                                                                      return (MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.35);
                                                                    }
                                                                  }(),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .lineColor,
                                                                    ),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.textFieldHeightInchesTextController ??=
                                                                                TextEditingController(
                                                                          text:
                                                                              containerUsersRecord.heightInches,
                                                                        ),
                                                                        focusNode:
                                                                            _model.textFieldHeightInchesFocusNode,
                                                                        onChanged:
                                                                            (_) =>
                                                                                EasyDebounce.debounce(
                                                                          '_model.textFieldHeightInchesTextController',
                                                                          Duration(
                                                                              milliseconds: 200),
                                                                          () =>
                                                                              setState(() {}),
                                                                        ),
                                                                        autofocus:
                                                                            false,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          enabledBorder:
                                                                              InputBorder.none,
                                                                          focusedBorder:
                                                                              InputBorder.none,
                                                                          errorBorder:
                                                                              InputBorder.none,
                                                                          focusedErrorBorder:
                                                                              InputBorder.none,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            null,
                                                                        keyboardType:
                                                                            TextInputType.number,
                                                                        validator: _model
                                                                            .textFieldHeightInchesTextControllerValidator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 15.0)),
                                    ),
                                  if (_model.selectedOption == 'Performance')
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85);
                                            } else if ((MediaQuery.sizeOf(
                                                            context)
                                                        .width >
                                                    kBreakpointSmall) &&
                                                (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointMedium)) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85);
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Container(
                                                  width: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.40);
                                                    } else if ((MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width >
                                                            kBreakpointSmall) &&
                                                        (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointMedium)) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.40);
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width >
                                                        kBreakpointLarge) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.12);
                                                    } else {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.40);
                                                    }
                                                  }(),
                                                  constraints: BoxConstraints(
                                                    minHeight: 140.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20.0),
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                      topLeft:
                                                          Radius.circular(20.0),
                                                      topRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                    border: Border.all(
                                                      color: Color(0xFFCCCCCC),
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                  child: Form(
                                                    key: _model.formKey3,
                                                    autovalidateMode:
                                                        AutovalidateMode.always,
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          height: 40.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      20.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      20.0),
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            15.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F16.png?alt=media&token=de0e2cfc-62e5-4420-8290-b5ea481cd83a',
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      'FB 4S Velo High',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          5.0)),
                                                                ),
                                                              ),
                                                            ]
                                                                .addToStart(
                                                                    SizedBox(
                                                                        width:
                                                                            5.0))
                                                                .addToEnd(
                                                                    SizedBox(
                                                                        width:
                                                                            5.0)),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      15.0,
                                                                      0.0,
                                                                      15.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Container(
                                                                width: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.35);
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >
                                                                      kBreakpointMedium) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.1);
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >
                                                                      kBreakpointLarge) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.1);
                                                                  } else {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.35);
                                                                  }
                                                                }(),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model.textFieldFB4SVeloHighTextController ??=
                                                                              TextEditingController(
                                                                        text: containerUsersRecord
                                                                            .selfReportedFB4SVeloHigh,
                                                                      ),
                                                                      focusNode:
                                                                          _model
                                                                              .textFieldFB4SVeloHighFocusNode,
                                                                      onChanged:
                                                                          (_) =>
                                                                              EasyDebounce.debounce(
                                                                        '_model.textFieldFB4SVeloHighTextController',
                                                                        Duration(
                                                                            milliseconds:
                                                                                200),
                                                                        () => setState(
                                                                            () {}),
                                                                      ),
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        enabledBorder:
                                                                            InputBorder.none,
                                                                        focusedBorder:
                                                                            InputBorder.none,
                                                                        errorBorder:
                                                                            InputBorder.none,
                                                                        focusedErrorBorder:
                                                                            InputBorder.none,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          null,
                                                                      keyboardType: const TextInputType
                                                                          .numberWithOptions(
                                                                          decimal:
                                                                              true),
                                                                      validator: _model
                                                                          .textFieldFB4SVeloHighTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Container(
                                                  width: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.40);
                                                    } else if ((MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width >
                                                            kBreakpointSmall) &&
                                                        (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointMedium)) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.40);
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width >
                                                        kBreakpointLarge) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.12);
                                                    } else {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.40);
                                                    }
                                                  }(),
                                                  constraints: BoxConstraints(
                                                    minHeight: 140.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20.0),
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                      topLeft:
                                                          Radius.circular(20.0),
                                                      topRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                    border: Border.all(
                                                      color: Color(0xFFCCCCCC),
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                  child: Form(
                                                    key: _model.formKey18,
                                                    autovalidateMode:
                                                        AutovalidateMode.always,
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          height: 40.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      20.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      20.0),
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            15.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F16.png?alt=media&token=de0e2cfc-62e5-4420-8290-b5ea481cd83a',
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      'FB 4S Velo Low',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          5.0)),
                                                                ),
                                                              ),
                                                            ]
                                                                .addToStart(
                                                                    SizedBox(
                                                                        width:
                                                                            5.0))
                                                                .addToEnd(
                                                                    SizedBox(
                                                                        width:
                                                                            5.0)),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      15.0,
                                                                      0.0,
                                                                      15.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Container(
                                                                width: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.35);
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >
                                                                      kBreakpointMedium) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.1);
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >
                                                                      kBreakpointLarge) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.1);
                                                                  } else {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.35);
                                                                  }
                                                                }(),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model.textFieldFB4SVeloAverageTextController ??=
                                                                              TextEditingController(
                                                                        text: containerUsersRecord
                                                                            .selfReportedFB4SVeloAverage,
                                                                      ),
                                                                      focusNode:
                                                                          _model
                                                                              .textFieldFB4SVeloAverageFocusNode,
                                                                      onChanged:
                                                                          (_) =>
                                                                              EasyDebounce.debounce(
                                                                        '_model.textFieldFB4SVeloAverageTextController',
                                                                        Duration(
                                                                            milliseconds:
                                                                                200),
                                                                        () => setState(
                                                                            () {}),
                                                                      ),
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        enabledBorder:
                                                                            InputBorder.none,
                                                                        focusedBorder:
                                                                            InputBorder.none,
                                                                        errorBorder:
                                                                            InputBorder.none,
                                                                        focusedErrorBorder:
                                                                            InputBorder.none,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          null,
                                                                      keyboardType: const TextInputType
                                                                          .numberWithOptions(
                                                                          decimal:
                                                                              true),
                                                                      validator: _model
                                                                          .textFieldFB4SVeloAverageTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
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
                                        Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85);
                                            } else if ((MediaQuery.sizeOf(
                                                            context)
                                                        .width >
                                                    kBreakpointSmall) &&
                                                (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointMedium)) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85);
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.12);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Form(
                                                  key: _model.formKey5,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F3.png?alt=media&token=f0fb878b-c51c-4d57-a744-20ff54e9e1c0',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'FB 2S Velo High',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointMedium) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointLarge) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                }
                                                              }(),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.textFieldFB2SVeloHighTextController ??=
                                                                            TextEditingController(
                                                                      text: containerUsersRecord
                                                                          .selfReportedFB2SVeloHigh,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldFB2SVeloHighFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textFieldFB2SVeloHighTextController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines:
                                                                        null,
                                                                    keyboardType: const TextInputType
                                                                        .numberWithOptions(
                                                                        decimal:
                                                                            true),
                                                                    validator: _model
                                                                        .textFieldFB2SVeloHighTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.12);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Form(
                                                  key: _model.formKey12,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F3.png?alt=media&token=f0fb878b-c51c-4d57-a744-20ff54e9e1c0',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'FB 2S Velo Low',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointMedium) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointLarge) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                }
                                                              }(),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.textFieldFB2SVeloAverageTextController ??=
                                                                            TextEditingController(
                                                                      text: containerUsersRecord
                                                                          .selfReportedFB2SVeloAverage,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldFB2SVeloAverageFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textFieldFB2SVeloAverageTextController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines:
                                                                        null,
                                                                    keyboardType: const TextInputType
                                                                        .numberWithOptions(
                                                                        decimal:
                                                                            true),
                                                                    validator: _model
                                                                        .textFieldFB2SVeloAverageTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85);
                                            } else if ((MediaQuery.sizeOf(
                                                            context)
                                                        .width >
                                                    kBreakpointSmall) &&
                                                (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointMedium)) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85);
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.12);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Form(
                                                  key: _model.formKey8,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2Fslider%20icon.png?alt=media&token=e38213a8-40ed-40cc-906f-a492418adbc8',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'SL Velo High',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointMedium) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointLarge) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                }
                                                              }(),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.textFieldSLVeloHighTextController ??=
                                                                            TextEditingController(
                                                                      text: containerUsersRecord
                                                                          .selfReportedSLVeloHigh,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldSLVeloHighFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textFieldSLVeloHighTextController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines:
                                                                        null,
                                                                    keyboardType: const TextInputType
                                                                        .numberWithOptions(
                                                                        decimal:
                                                                            true),
                                                                    validator: _model
                                                                        .textFieldSLVeloHighTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.12);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Form(
                                                  key: _model.formKey14,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2Fslider%20icon.png?alt=media&token=e38213a8-40ed-40cc-906f-a492418adbc8',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'SL Velo Low',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointMedium) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointLarge) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                }
                                                              }(),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.textFieldSLVeloAverageTextController ??=
                                                                            TextEditingController(
                                                                      text: containerUsersRecord
                                                                          .selfReportedSLVeloAverage,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldSLVeloAverageFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textFieldSLVeloAverageTextController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines:
                                                                        null,
                                                                    keyboardType: const TextInputType
                                                                        .numberWithOptions(
                                                                        decimal:
                                                                            true),
                                                                    validator: _model
                                                                        .textFieldSLVeloAverageTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85);
                                            } else if ((MediaQuery.sizeOf(
                                                            context)
                                                        .width >
                                                    kBreakpointSmall) &&
                                                (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointMedium)) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85);
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.12);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Form(
                                                  key: _model.formKey13,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F12.png?alt=media&token=28df08ca-5627-4b38-8fbd-fa60ec8553ab',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'CH  Velo High',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointMedium) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointLarge) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                }
                                                              }(),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.textFieldCHVeloHighTextController ??=
                                                                            TextEditingController(
                                                                      text: containerUsersRecord
                                                                          .selfReportedCHVeloHigh,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldCHVeloHighFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textFieldCHVeloHighTextController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines:
                                                                        null,
                                                                    keyboardType: const TextInputType
                                                                        .numberWithOptions(
                                                                        decimal:
                                                                            true),
                                                                    validator: _model
                                                                        .textFieldCHVeloHighTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.12);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Form(
                                                  key: _model.formKey6,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F12.png?alt=media&token=28df08ca-5627-4b38-8fbd-fa60ec8553ab',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'CH Velo Low',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointMedium) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointLarge) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                }
                                                              }(),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.textFieldFBCHVeloAverageTextController ??=
                                                                            TextEditingController(
                                                                      text: containerUsersRecord
                                                                          .selfReportedCHVeloAverage,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldFBCHVeloAverageFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textFieldFBCHVeloAverageTextController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines:
                                                                        null,
                                                                    keyboardType: const TextInputType
                                                                        .numberWithOptions(
                                                                        decimal:
                                                                            true),
                                                                    validator: _model
                                                                        .textFieldFBCHVeloAverageTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85);
                                            } else if ((MediaQuery.sizeOf(
                                                            context)
                                                        .width >
                                                    kBreakpointSmall) &&
                                                (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointMedium)) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85);
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.12);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Form(
                                                  key: _model.formKey10,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2Fcb_1.png?alt=media&token=45233ba1-aad8-4191-93bf-564bc602c4a0',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'CB  Velo High',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointMedium) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointLarge) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                }
                                                              }(),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.textFieldCBVeloHighTextController ??=
                                                                            TextEditingController(
                                                                      text: containerUsersRecord
                                                                          .selfReportedCBVeloHigh,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldCBVeloHighFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textFieldCBVeloHighTextController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines:
                                                                        null,
                                                                    keyboardType: const TextInputType
                                                                        .numberWithOptions(
                                                                        decimal:
                                                                            true),
                                                                    validator: _model
                                                                        .textFieldCBVeloHighTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.12);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Form(
                                                  key: _model.formKey2,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2Fcb_1.png?alt=media&token=45233ba1-aad8-4191-93bf-564bc602c4a0',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'CB Velo Low',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointMedium) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointLarge) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                }
                                                              }(),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.textFieldCBVeloAverageTextController ??=
                                                                            TextEditingController(
                                                                      text: containerUsersRecord
                                                                          .selfReportedCBVeloAverage,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldCBVeloAverageFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textFieldCBVeloAverageTextController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines:
                                                                        null,
                                                                    keyboardType: const TextInputType
                                                                        .numberWithOptions(
                                                                        decimal:
                                                                            true),
                                                                    validator: _model
                                                                        .textFieldCBVeloAverageTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85);
                                            } else if ((MediaQuery.sizeOf(
                                                            context)
                                                        .width >
                                                    kBreakpointSmall) &&
                                                (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointMedium)) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85);
                                            } else if (MediaQuery.sizeOf(
                                                        context)
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
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.12);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Form(
                                                  key: _model.formKey17,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F15.png?alt=media&token=da732995-0c2e-4335-812b-eb66e45533a2',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    '60 Time',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointMedium) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointLarge) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                }
                                                              }(),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.textField60TimeTextController ??=
                                                                            TextEditingController(
                                                                      text: containerUsersRecord
                                                                          .selfReportedTime60,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .textField60TimeFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textField60TimeTextController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines:
                                                                        null,
                                                                    keyboardType: const TextInputType
                                                                        .numberWithOptions(
                                                                        decimal:
                                                                            true),
                                                                    validator: _model
                                                                        .textField60TimeTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if ((MediaQuery.sizeOf(
                                                                  context)
                                                              .width >
                                                          kBreakpointSmall) &&
                                                      (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointMedium)) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointLarge) {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.12);
                                                  } else {
                                                    return (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.40);
                                                  }
                                                }(),
                                                constraints: BoxConstraints(
                                                  minHeight: 140.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFCCCCCC),
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: Form(
                                                  key: _model.formKey1,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        constraints:
                                                            BoxConstraints(
                                                          minHeight: 40.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 25.0,
                                                                height: 25.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F14.png?alt=media&token=7d76222c-85a9-464e-9009-983bf87329f3',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    'EV',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    'Off The Tee – Metal Bat',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        2.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0))
                                                              .addToEnd(
                                                                  SizedBox(
                                                                      width:
                                                                          5.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              width: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointMedium) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >
                                                                    kBreakpointLarge) {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1);
                                                                } else {
                                                                  return (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.35);
                                                                }
                                                              }(),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.textFieldEVTextController ??=
                                                                            TextEditingController(
                                                                      text: containerUsersRecord
                                                                          .selfReportedBattingEV,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldEVFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textFieldEVTextController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines:
                                                                        null,
                                                                    keyboardType: const TextInputType
                                                                        .numberWithOptions(
                                                                        decimal:
                                                                            true),
                                                                    validator: _model
                                                                        .textFieldEVTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 85.0),
                                          child: Container(
                                            width: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return (MediaQuery.sizeOf(
                                                            context)
                                                        .width *
                                                    0.85);
                                              } else if ((MediaQuery.sizeOf(
                                                              context)
                                                          .width >
                                                      kBreakpointSmall) &&
                                                  (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointMedium)) {
                                                return (MediaQuery.sizeOf(
                                                            context)
                                                        .width *
                                                    0.85);
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width >
                                                  kBreakpointLarge) {
                                                return (MediaQuery.sizeOf(
                                                            context)
                                                        .width *
                                                    0.25);
                                              } else {
                                                return (MediaQuery.sizeOf(
                                                            context)
                                                        .width *
                                                    0.85);
                                              }
                                            }(),
                                            decoration: BoxDecoration(),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.40);
                                                    } else if ((MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width >
                                                            kBreakpointSmall) &&
                                                        (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointMedium)) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.40);
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width >
                                                        kBreakpointLarge) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.12);
                                                    } else {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.40);
                                                    }
                                                  }(),
                                                  constraints: BoxConstraints(
                                                    minHeight: 140.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20.0),
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                      topLeft:
                                                          Radius.circular(20.0),
                                                      topRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                    border: Border.all(
                                                      color: Color(0xFFCCCCCC),
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                  child: Form(
                                                    key: _model.formKey20,
                                                    autovalidateMode:
                                                        AutovalidateMode.always,
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          height: 40.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      20.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      20.0),
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            15.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/pop%20time.png?alt=media&token=58d1005b-2a3d-4d67-9fc9-d140f47e9008',
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      'Pop Time',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          5.0)),
                                                                ),
                                                              ),
                                                            ]
                                                                .addToStart(
                                                                    SizedBox(
                                                                        width:
                                                                            5.0))
                                                                .addToEnd(
                                                                    SizedBox(
                                                                        width:
                                                                            5.0)),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      15.0,
                                                                      0.0,
                                                                      15.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Container(
                                                                width: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.35);
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >
                                                                      kBreakpointMedium) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.1);
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >
                                                                      kBreakpointLarge) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.1);
                                                                  } else {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.35);
                                                                  }
                                                                }(),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textFieldPopTimeTextController,
                                                                      focusNode:
                                                                          _model
                                                                              .textFieldPopTimeFocusNode,
                                                                      onChanged:
                                                                          (_) =>
                                                                              EasyDebounce.debounce(
                                                                        '_model.textFieldPopTimeTextController',
                                                                        Duration(
                                                                            milliseconds:
                                                                                200),
                                                                        () => setState(
                                                                            () {}),
                                                                      ),
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        enabledBorder:
                                                                            InputBorder.none,
                                                                        focusedBorder:
                                                                            InputBorder.none,
                                                                        errorBorder:
                                                                            InputBorder.none,
                                                                        focusedErrorBorder:
                                                                            InputBorder.none,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          null,
                                                                      keyboardType: const TextInputType
                                                                          .numberWithOptions(
                                                                          decimal:
                                                                              true),
                                                                      validator: _model
                                                                          .textFieldPopTimeTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.40);
                                                    } else if ((MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width >
                                                            kBreakpointSmall) &&
                                                        (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointMedium)) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.40);
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width >
                                                        kBreakpointLarge) {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.12);
                                                    } else {
                                                      return (MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.40);
                                                    }
                                                  }(),
                                                  constraints: BoxConstraints(
                                                    minHeight: 140.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20.0),
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                      topLeft:
                                                          Radius.circular(20.0),
                                                      topRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                    border: Border.all(
                                                      color: Color(0xFFCCCCCC),
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                  child: Form(
                                                    key: _model.formKey11,
                                                    autovalidateMode:
                                                        AutovalidateMode.always,
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          constraints:
                                                              BoxConstraints(
                                                            minHeight: 40.0,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      20.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      20.0),
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            15.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2F2.png?alt=media&token=eb6eca26-2e49-475b-ac73-6509f7ef6508',
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      'Throw Speed',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      'Off The Mound',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          2.0)),
                                                                ),
                                                              ),
                                                            ]
                                                                .addToStart(
                                                                    SizedBox(
                                                                        width:
                                                                            5.0))
                                                                .addToEnd(
                                                                    SizedBox(
                                                                        width:
                                                                            5.0)),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      15.0,
                                                                      0.0,
                                                                      15.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Container(
                                                                width: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.35);
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >
                                                                      kBreakpointMedium) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.1);
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >
                                                                      kBreakpointLarge) {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.1);
                                                                  } else {
                                                                    return (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.35);
                                                                  }
                                                                }(),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textFieldFTOFFMoundTextController,
                                                                      focusNode:
                                                                          _model
                                                                              .textFieldFTOFFMoundFocusNode,
                                                                      onChanged:
                                                                          (_) =>
                                                                              EasyDebounce.debounce(
                                                                        '_model.textFieldFTOFFMoundTextController',
                                                                        Duration(
                                                                            milliseconds:
                                                                                200),
                                                                        () => setState(
                                                                            () {}),
                                                                      ),
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        enabledBorder:
                                                                            InputBorder.none,
                                                                        focusedBorder:
                                                                            InputBorder.none,
                                                                        errorBorder:
                                                                            InputBorder.none,
                                                                        focusedErrorBorder:
                                                                            InputBorder.none,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          null,
                                                                      keyboardType: const TextInputType
                                                                          .numberWithOptions(
                                                                          decimal:
                                                                              true),
                                                                      validator: _model
                                                                          .textFieldFTOFFMoundTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 15.0)),
                                    ),
                                  if (_model.selectedOption == 'College')
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 8.0, 12.0, 8.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE0E0E0),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(4.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Icon(
                                                      Icons.search_rounded,
                                                      color: Color(0xFF8B9BA8),
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textFieldSearchTextController,
                                                        focusNode: _model
                                                            .textFieldSearchFocusNode,
                                                        onChanged: (_) =>
                                                            EasyDebounce
                                                                .debounce(
                                                          '_model.textFieldSearchTextController',
                                                          Duration(
                                                              milliseconds:
                                                                  1000),
                                                          () async {
                                                            if (_model
                                                                    .textFieldSearchTextController
                                                                    .text ==
                                                                '') {
                                                              _model.showFullList =
                                                                  true;
                                                              setState(() {});
                                                            } else {
                                                              await queryCollegesRecordOnce()
                                                                  .then(
                                                                    (records) => _model
                                                                            .simpleSearchResults =
                                                                        TextSearch(
                                                                      records
                                                                          .map(
                                                                            (record) =>
                                                                                TextSearchItem.fromTerms(record, [
                                                                              record.name!,
                                                                              record.city!,
                                                                              record.state!
                                                                            ]),
                                                                          )
                                                                          .toList(),
                                                                    )
                                                                            .search(_model
                                                                                .textFieldSearchTextController.text)
                                                                            .map((r) =>
                                                                                r.object)
                                                                            .take(15)
                                                                            .toList(),
                                                                  )
                                                                  .onError((_,
                                                                          __) =>
                                                                      _model.simpleSearchResults =
                                                                          [])
                                                                  .whenComplete(() =>
                                                                      setState(
                                                                          () {}));

                                                              _model.showFullList =
                                                                  false;
                                                              setState(() {});
                                                            }
                                                          },
                                                        ),
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          hintText: 'Search...',
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                          errorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                          focusedErrorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      4.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      4.0),
                                                            ),
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        validator: _model
                                                            .textFieldSearchTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    icon: Icon(
                                                      Icons.cancel_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      _model.showFullList =
                                                          true;
                                                      setState(() {});
                                                      setState(() {
                                                        _model
                                                            .textFieldSearchTextController
                                                            ?.clear();
                                                      });
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        if (_model.showFullList)
                                          PagedListView<
                                              DocumentSnapshot<Object?>?,
                                              CollegesRecord>.separated(
                                            pagingController:
                                                _model.setListViewController2(
                                              CollegesRecord.collection,
                                            ),
                                            padding: EdgeInsets.fromLTRB(
                                              0,
                                              10.0,
                                              0,
                                              0,
                                            ),
                                            primary: false,
                                            shrinkWrap: true,
                                            reverse: false,
                                            scrollDirection: Axis.vertical,
                                            separatorBuilder: (_, __) =>
                                                SizedBox(height: 15.0),
                                            builderDelegate:
                                                PagedChildBuilderDelegate<
                                                    CollegesRecord>(
                                              // Customize what your widget looks like when it's loading the first page.
                                              firstPageProgressIndicatorBuilder:
                                                  (_) => Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              // Customize what your widget looks like when it's loading another page.
                                              newPageProgressIndicatorBuilder:
                                                  (_) => Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              itemBuilder:
                                                  (context, _, listViewIndex) {
                                                final listViewCollegesRecord = _model
                                                    .listViewPagingController2!
                                                    .itemList![listViewIndex];
                                                return Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  child: Container(
                                                    width: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return MediaQuery
                                                                .sizeOf(context)
                                                            .width;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width >
                                                          kBreakpointMedium) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.6);
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width >
                                                          kBreakpointLarge) {
                                                        return (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width *
                                                            0.6);
                                                      } else {
                                                        return MediaQuery
                                                                .sizeOf(context)
                                                            .width;
                                                      }
                                                    }(),
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 3.0,
                                                          color:
                                                              Color(0x20000000),
                                                          offset: Offset(
                                                            0.0,
                                                            1.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  15.0,
                                                                  12.0,
                                                                  15.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .network(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          listViewCollegesRecord
                                                                              .logoPath,
                                                                          'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2Ficons.png?alt=media&token=1710cad9-166b-4bf7-a63c-5775209141e1',
                                                                        ),
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        errorBuilder: (context,
                                                                                error,
                                                                                stackTrace) =>
                                                                            Image.asset(
                                                                          'assets/images/error_image.png',
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Container(
                                                                          width:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return (MediaQuery.sizeOf(context).width * 0.6);
                                                                            } else if (MediaQuery.sizeOf(context).width >
                                                                                kBreakpointMedium) {
                                                                              return (MediaQuery.sizeOf(context).width * 0.15);
                                                                            } else if (MediaQuery.sizeOf(context).width >
                                                                                kBreakpointLarge) {
                                                                              return (MediaQuery.sizeOf(context).width * 0.15);
                                                                            } else {
                                                                              return (MediaQuery.sizeOf(context).width * 0.6);
                                                                            }
                                                                          }(),
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              listViewCollegesRecord.name,
                                                                              style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                    fontFamily: 'Outfit',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 16.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            listViewCollegesRecord.mascot,
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 2.0)),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Stack(
                                                            children: [
                                                              if (_model
                                                                      .selectedCollegesList
                                                                      .contains(
                                                                          listViewCollegesRecord
                                                                              .reference) ==
                                                                  true)
                                                                FlutterFlowIconButton(
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderRadius:
                                                                      20.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  icon: Icon(
                                                                    Icons
                                                                        .favorite,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 24.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    _model.removeFromSelectedCollegesList(
                                                                        listViewCollegesRecord
                                                                            .reference);
                                                                    setState(
                                                                        () {});
                                                                  },
                                                                ),
                                                              if (_model
                                                                      .selectedCollegesList
                                                                      .contains(
                                                                          listViewCollegesRecord
                                                                              .reference) ==
                                                                  false)
                                                                FlutterFlowIconButton(
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderRadius:
                                                                      20.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  icon: Icon(
                                                                    Icons
                                                                        .favorite_border,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    _model.addToSelectedCollegesList(
                                                                        listViewCollegesRecord
                                                                            .reference);
                                                                    setState(
                                                                        () {});
                                                                  },
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'containerOnPageLoadAnimation1']!),
                                                );
                                              },
                                            ),
                                          ),
                                        if (!_model.showFullList)
                                          Builder(
                                            builder: (context) {
                                              final listOfCollege = _model
                                                  .simpleSearchResults
                                                  .toList();

                                              return ListView.separated(
                                                padding: EdgeInsets.fromLTRB(
                                                  0,
                                                  10.0,
                                                  0,
                                                  0,
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: listOfCollege.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(height: 15.0),
                                                itemBuilder: (context,
                                                    listOfCollegeIndex) {
                                                  final listOfCollegeItem =
                                                      listOfCollege[
                                                          listOfCollegeIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    child: Container(
                                                      width: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width >
                                                            kBreakpointMedium) {
                                                          return (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width *
                                                              0.6);
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width >
                                                            kBreakpointLarge) {
                                                          return (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width *
                                                              0.6);
                                                        } else {
                                                          return MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width;
                                                        }
                                                      }(),
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 3.0,
                                                            color: Color(
                                                                0x20000000),
                                                            offset: Offset(
                                                              0.0,
                                                              1.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    15.0,
                                                                    12.0,
                                                                    15.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listOfCollegeItem.logoPath,
                                                                            'https://firebasestorage.googleapis.com/v0/b/academic-ballers.appspot.com/o/icons%2Ficons.png?alt=media&token=1710cad9-166b-4bf7-a63c-5775209141e1',
                                                                          ),
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                          errorBuilder: (context, error, stackTrace) =>
                                                                              Image.asset(
                                                                            'assets/images/error_image.png',
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Container(
                                                                            width:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return (MediaQuery.sizeOf(context).width * 0.6);
                                                                              } else if (MediaQuery.sizeOf(context).width > kBreakpointMedium) {
                                                                                return (MediaQuery.sizeOf(context).width * 0.15);
                                                                              } else if (MediaQuery.sizeOf(context).width > kBreakpointLarge) {
                                                                                return (MediaQuery.sizeOf(context).width * 0.15);
                                                                              } else {
                                                                                return (MediaQuery.sizeOf(context).width * 0.6);
                                                                              }
                                                                            }(),
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  listOfCollegeItem.name,
                                                                                  '-',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                      fontFamily: 'Outfit',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                4.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                listOfCollegeItem.mascot,
                                                                                '-',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontSize: 12.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ].divide(SizedBox(height: 2.0)),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Stack(
                                                              children: [
                                                                if (_model
                                                                        .selectedCollegesList
                                                                        .contains(
                                                                            listOfCollegeItem.reference) ==
                                                                    true)
                                                                  FlutterFlowIconButton(
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        1.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .favorite,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () async {
                                                                      _model.removeFromSelectedCollegesList(
                                                                          listOfCollegeItem
                                                                              .reference);
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                  ),
                                                                if (_model
                                                                        .selectedCollegesList
                                                                        .contains(
                                                                            listOfCollegeItem.reference) ==
                                                                    false)
                                                                  FlutterFlowIconButton(
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        1.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () async {
                                                                      _model.addToSelectedCollegesList(
                                                                          listOfCollegeItem
                                                                              .reference);
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                  ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation2']!),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Container(
                  width: (MediaQuery.sizeOf(context).width >
                              kBreakpointMedium) &&
                          (MediaQuery.sizeOf(context).width < kBreakpointLarge)
                      ? 300.0
                      : 400.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 390.0,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: StreamBuilder<List<PromotionsRecord>>(
                              stream: queryPromotionsRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<PromotionsRecord>
                                    listViewPromotionsRecordList =
                                    snapshot.data!;

                                return ListView.separated(
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    10.0,
                                    0,
                                    0,
                                  ),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      listViewPromotionsRecordList.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(height: 15.0),
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewPromotionsRecord =
                                        listViewPromotionsRecordList[
                                            listViewIndex];
                                    return PromotionComponentWidget(
                                      key: Key(
                                          'Keytzs_${listViewIndex}_of_${listViewPromotionsRecordList.length}'),
                                      promotionReference:
                                          listViewPromotionsRecord.reference,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ],
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
