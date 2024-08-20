import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'social_accounts_components_widget.dart'
    show SocialAccountsComponentsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SocialAccountsComponentsModel
    extends FlutterFlowModel<SocialAccountsComponentsWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for updateTitle widget.
  FocusNode? updateTitleFocusNode1;
  TextEditingController? updateTitleTextController1;
  String? Function(BuildContext, String?)? updateTitleTextController1Validator;
  // State field(s) for updateTitle widget.
  FocusNode? updateTitleFocusNode2;
  TextEditingController? updateTitleTextController2;
  String? Function(BuildContext, String?)? updateTitleTextController2Validator;
  // State field(s) for updateTitle widget.
  FocusNode? updateTitleFocusNode3;
  TextEditingController? updateTitleTextController3;
  String? Function(BuildContext, String?)? updateTitleTextController3Validator;
  // State field(s) for updateTitle widget.
  FocusNode? updateTitleFocusNode4;
  TextEditingController? updateTitleTextController4;
  String? Function(BuildContext, String?)? updateTitleTextController4Validator;
  // State field(s) for updateTitle widget.
  FocusNode? updateTitleFocusNode5;
  TextEditingController? updateTitleTextController5;
  String? Function(BuildContext, String?)? updateTitleTextController5Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    updateTitleFocusNode1?.dispose();
    updateTitleTextController1?.dispose();

    updateTitleFocusNode2?.dispose();
    updateTitleTextController2?.dispose();

    updateTitleFocusNode3?.dispose();
    updateTitleTextController3?.dispose();

    updateTitleFocusNode4?.dispose();
    updateTitleTextController4?.dispose();

    updateTitleFocusNode5?.dispose();
    updateTitleTextController5?.dispose();
  }
}
