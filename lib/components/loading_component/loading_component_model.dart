import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'loading_component_widget.dart' show LoadingComponentWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LoadingComponentModel extends FlutterFlowModel<LoadingComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in loadingComponent widget.
  List<UsersRecord>? doesEmailExistonPageLoad;
  // Stores action output result for [Backend Call - API (createNewUser)] action in loadingComponent widget.
  ApiCallResponse? apiResultnr824;
  // Stores action output result for [Custom Action - addNewUserDocument] action in loadingComponent widget.
  DocumentReference? createUser2;
  // Stores action output result for [Firestore Query - Query a collection] action in loadingComponent widget.
  TwitterUsersRecord? checkIfTwitterUserExist;
  // Stores action output result for [Backend Call - Create Document] action in loadingComponent widget.
  TwitterUsersRecord? createtwitterUser;
  // Stores action output result for [Firestore Query - Query a collection] action in loadingComponent widget.
  TwitterUsersRecord? checkIfTwitterUserExist2;
  // Stores action output result for [Backend Call - Create Document] action in loadingComponent widget.
  TwitterUsersRecord? createtwitterUser2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
