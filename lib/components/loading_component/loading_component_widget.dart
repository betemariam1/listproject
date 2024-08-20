import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'loading_component_model.dart';
export 'loading_component_model.dart';

class LoadingComponentWidget extends StatefulWidget {
  const LoadingComponentWidget({
    super.key,
    required this.email,
    required this.twitterID,
    required this.twitterUserName,
    required this.forLogIn,
  });

  final String? email;
  final String? twitterID;
  final String? twitterUserName;
  final bool? forLogIn;

  @override
  State<LoadingComponentWidget> createState() => _LoadingComponentWidgetState();
}

class _LoadingComponentWidgetState extends State<LoadingComponentWidget> {
  late LoadingComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.doesEmailExistonPageLoad = await queryUsersRecordOnce(
        queryBuilder: (usersRecord) => usersRecord.where(
          'email',
          isEqualTo: widget!.email,
        ),
      );
      if (_model.doesEmailExistonPageLoad?.length == 0) {
        _model.apiResultnr824 = await CreateNewUserCall.call(
          email: widget!.email,
          pwd: '123456',
        );

        if ((_model.apiResultnr824?.succeeded ?? true)) {
          _model.createUser2 = await actions.addNewUserDocument(
            widget!.email!,
            ' ',
            ' ',
            ' ',
            ' ',
            CreateNewUserCall.uid(
              (_model.apiResultnr824?.jsonBody ?? ''),
            )!,
            'Baseball',
          );

          await _model.createUser2!.update(createUsersRecordData(
            twitterData: updateTwitterDataStruct(
              TwitterDataStruct(
                name: widget!.twitterUserName,
                id: widget!.twitterID,
              ),
              clearUnsetFields: false,
            ),
          ));
          GoRouter.of(context).prepareAuthEvent();

          final user = await authManager.signInWithEmail(
            context,
            widget!.email!,
            FFAppState().pwd,
          );
          if (user == null) {
            return;
          }

          _model.checkIfTwitterUserExist = await queryTwitterUsersRecordOnce(
            queryBuilder: (twitterUsersRecord) => twitterUsersRecord.where(
              'id',
              isEqualTo: widget!.twitterID,
            ),
            singleRecord: true,
          ).then((s) => s.firstOrNull);
          if (_model.checkIfTwitterUserExist?.reference != null) {
            await _model.createUser2!.update(createUsersRecordData(
              selfReportedBattingEV: _model
                  .checkIfTwitterUserExist?.userRecord?.selfReportedBattingEV,
              selfReportedCBVeloAverage: _model.checkIfTwitterUserExist
                  ?.userRecord?.selfReportedCBVeloAverage,
              selfReportedCBVeloHigh: _model
                  .checkIfTwitterUserExist?.userRecord?.selfReportedCBVeloHigh,
              selfReportedCHVeloAverage: _model.checkIfTwitterUserExist
                  ?.userRecord?.selfReportedCHVeloAverage,
              selfReportedCHVeloHigh: _model
                  .checkIfTwitterUserExist?.userRecord?.selfReportedCHVeloHigh,
              selfReportedSLVeloAverage: _model.checkIfTwitterUserExist
                  ?.userRecord?.selfReportedSLVeloAverage,
              selfReportedSLVeloHigh: _model
                  .checkIfTwitterUserExist?.userRecord?.selfReportedSLVeloHigh,
              selfReportedFB2SVeloAverage: _model.checkIfTwitterUserExist
                  ?.userRecord?.selfReportedFB2SVeloAverage,
              selfReportedFB2SVeloHigh: _model.checkIfTwitterUserExist
                  ?.userRecord?.selfReportedFB2SVeloHigh,
              selfReportedFB4SVeloHigh: _model.checkIfTwitterUserExist
                  ?.userRecord?.selfReportedFB4SVeloHigh,
              selfReportedFB4SVeloAverage: _model.checkIfTwitterUserExist
                  ?.userRecord?.selfReportedFB4SVeloAverage,
              selfReportedTime60: _model
                  .checkIfTwitterUserExist?.userRecord?.selfReportedTime60,
              selfReportedProShuttleTime: _model.checkIfTwitterUserExist
                  ?.userRecord?.selfReportedProShuttleTime,
              selfReportedGPA:
                  _model.checkIfTwitterUserExist?.userRecord?.selfReportedGPA,
              bat: _model.checkIfTwitterUserExist?.userRecord?.bat,
              heightInches:
                  _model.checkIfTwitterUserExist?.userRecord?.heightInches,
              heightFeet:
                  _model.checkIfTwitterUserExist?.userRecord?.heightFeet,
              weight: _model.checkIfTwitterUserExist?.userRecord?.weight,
              graduationYear:
                  _model.checkIfTwitterUserExist?.userRecord?.graduationYear,
              selfReportedWeightedGPA: _model
                  .checkIfTwitterUserExist?.userRecord?.selfReportedWeightedGPA,
              playerSelectedSport: _model
                  .checkIfTwitterUserExist?.userRecord?.playerSelectedSport,
              selfReportedACTTotal: _model
                  .checkIfTwitterUserExist?.userRecord?.selfReportedACTTotal,
              selfReportedSATTotal: _model
                  .checkIfTwitterUserExist?.userRecord?.selfReportedSATTotal,
              twitterData: updateTwitterDataStruct(
                TwitterDataStruct(
                  twitterUserRef: _model.checkIfTwitterUserExist?.reference,
                  name: widget!.twitterUserName,
                  id: widget!.twitterID,
                ),
                clearUnsetFields: false,
              ),
            ));
            Navigator.pop(context);

            context.pushNamedAuth(
              'editPage',
              context.mounted,
              queryParameters: {
                'twitterUserReference': serializeParam(
                  _model.checkIfTwitterUserExist?.reference,
                  ParamType.DocumentReference,
                ),
              }.withoutNulls,
            );
          } else {
            var twitterUsersRecordReference1 =
                TwitterUsersRecord.collection.doc(widget!.twitterID!);
            await twitterUsersRecordReference1.set(createTwitterUsersRecordData(
              active: false,
              email: widget!.email,
              id: widget!.twitterID,
              twitterId: createDataFieldStruct(
                name: 'Twitter Id',
                value: widget!.twitterID,
                clearUnsetFields: false,
                create: true,
              ),
              username: widget!.twitterUserName,
              usernameData: createDataFieldStruct(
                name: 'Username',
                value: widget!.twitterUserName,
                clearUnsetFields: false,
                create: true,
              ),
              isClaimed: true,
            ));
            _model.createtwitterUser = TwitterUsersRecord.getDocumentFromData(
                createTwitterUsersRecordData(
                  active: false,
                  email: widget!.email,
                  id: widget!.twitterID,
                  twitterId: createDataFieldStruct(
                    name: 'Twitter Id',
                    value: widget!.twitterID,
                    clearUnsetFields: false,
                    create: true,
                  ),
                  username: widget!.twitterUserName,
                  usernameData: createDataFieldStruct(
                    name: 'Username',
                    value: widget!.twitterUserName,
                    clearUnsetFields: false,
                    create: true,
                  ),
                  isClaimed: true,
                ),
                twitterUsersRecordReference1);

            await _model.createUser2!.update(createUsersRecordData(
              twitterData: updateTwitterDataStruct(
                TwitterDataStruct(
                  twitterUserRef: _model.createtwitterUser?.reference,
                  name: widget!.twitterUserName,
                  id: widget!.twitterID,
                ),
                clearUnsetFields: false,
              ),
            ));
            Navigator.pop(context);

            context.pushNamedAuth(
              'editPage',
              context.mounted,
              queryParameters: {
                'twitterUserReference': serializeParam(
                  _model.createtwitterUser?.reference,
                  ParamType.DocumentReference,
                ),
              }.withoutNulls,
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                ),
              },
            );
          }
        } else {
          if (() {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return true;
            } else if (MediaQuery.sizeOf(context).width > kBreakpointMedium) {
              return false;
            } else if (MediaQuery.sizeOf(context).width > kBreakpointLarge) {
              return false;
            } else {
              return false;
            }
          }()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Error happened please try again',
                  style: GoogleFonts.getFont(
                    'Outfit',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    fontSize: 12.0,
                  ),
                ),
                duration: Duration(milliseconds: 3000),
                backgroundColor: FlutterFlowTheme.of(context).error,
              ),
            );
            return;
          } else {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text('Request Failed'),
                  content: Text('Error happened please try again'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext),
                      child: Text('Ok'),
                    ),
                  ],
                );
              },
            );
            return;
          }
        }
      } else {
        _model.checkIfTwitterUserExist2 = await queryTwitterUsersRecordOnce(
          queryBuilder: (twitterUsersRecord) => twitterUsersRecord.where(
            'id',
            isEqualTo: widget!.twitterID,
          ),
          singleRecord: true,
        ).then((s) => s.firstOrNull);
        if (_model.checkIfTwitterUserExist2?.reference != null) {
          await _model.doesEmailExistonPageLoad!.first.reference
              .update(createUsersRecordData(
            twitterData: updateTwitterDataStruct(
              TwitterDataStruct(
                name: widget!.twitterUserName,
                id: widget!.twitterID,
                twitterUserRef: _model.checkIfTwitterUserExist2?.reference,
              ),
              clearUnsetFields: false,
            ),
          ));
          Navigator.pop(context);
          if (currentUserReference != null) {
            context.pushNamedAuth(
              'editPage',
              context.mounted,
              queryParameters: {
                'twitterUserReference': serializeParam(
                  _model.checkIfTwitterUserExist2?.reference,
                  ParamType.DocumentReference,
                ),
              }.withoutNulls,
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                ),
              },
            );
          } else {
            context.pushNamedAuth(
              'surveyPageConfirm',
              context.mounted,
              queryParameters: {
                'userDocument': serializeParam(
                  _model.doesEmailExistonPageLoad?.first,
                  ParamType.Document,
                ),
              }.withoutNulls,
              extra: <String, dynamic>{
                'userDocument': _model.doesEmailExistonPageLoad?.first,
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                ),
              },
            );
          }
        } else {
          var twitterUsersRecordReference2 =
              TwitterUsersRecord.collection.doc(widget!.twitterID!);
          await twitterUsersRecordReference2.set(createTwitterUsersRecordData(
            active: false,
            email: widget!.email,
            id: widget!.twitterID,
            twitterId: createDataFieldStruct(
              name: 'Twitter Id',
              value: widget!.twitterID,
              clearUnsetFields: false,
              create: true,
            ),
            username: widget!.twitterUserName,
            usernameData: createDataFieldStruct(
              name: 'Username',
              value: widget!.twitterUserName,
              clearUnsetFields: false,
              create: true,
            ),
            isClaimed: true,
            nameData: createDataFieldStruct(
              name: 'Name',
              value:
                  '${_model.doesEmailExistonPageLoad?.first?.firstName} ${_model.doesEmailExistonPageLoad?.first?.lastName}',
              clearUnsetFields: false,
              create: true,
            ),
          ));
          _model.createtwitterUser2 = TwitterUsersRecord.getDocumentFromData(
              createTwitterUsersRecordData(
                active: false,
                email: widget!.email,
                id: widget!.twitterID,
                twitterId: createDataFieldStruct(
                  name: 'Twitter Id',
                  value: widget!.twitterID,
                  clearUnsetFields: false,
                  create: true,
                ),
                username: widget!.twitterUserName,
                usernameData: createDataFieldStruct(
                  name: 'Username',
                  value: widget!.twitterUserName,
                  clearUnsetFields: false,
                  create: true,
                ),
                isClaimed: true,
                nameData: createDataFieldStruct(
                  name: 'Name',
                  value:
                      '${_model.doesEmailExistonPageLoad?.first?.firstName} ${_model.doesEmailExistonPageLoad?.first?.lastName}',
                  clearUnsetFields: false,
                  create: true,
                ),
              ),
              twitterUsersRecordReference2);

          await _model.doesEmailExistonPageLoad!.first.reference
              .update(createUsersRecordData(
            twitterData: updateTwitterDataStruct(
              TwitterDataStruct(
                name: widget!.twitterUserName,
                id: widget!.twitterID,
                twitterUserRef: _model.createtwitterUser2?.reference,
              ),
              clearUnsetFields: false,
            ),
          ));
          Navigator.pop(context);
          if (currentUserReference != null) {
            context.pushNamedAuth(
              'editPage',
              context.mounted,
              queryParameters: {
                'twitterUserReference': serializeParam(
                  _model.createtwitterUser2?.reference,
                  ParamType.DocumentReference,
                ),
              }.withoutNulls,
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                ),
              },
            );
          } else {
            context.pushNamedAuth(
              'surveyPageConfirm',
              context.mounted,
              queryParameters: {
                'userDocument': serializeParam(
                  _model.doesEmailExistonPageLoad?.first,
                  ParamType.Document,
                ),
              }.withoutNulls,
              extra: <String, dynamic>{
                'userDocument': _model.doesEmailExistonPageLoad?.first,
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                ),
              },
            );
          }
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/lottie_animations/Animation_-_1708410497252.json',
            width: 250.0,
            height: 180.0,
            fit: BoxFit.cover,
            animate: true,
          ),
        ],
      ),
    );
  }
}
