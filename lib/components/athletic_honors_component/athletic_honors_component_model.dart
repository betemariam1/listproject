import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'athletic_honors_component_widget.dart'
    show AthleticHonorsComponentWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AthleticHonorsComponentModel
    extends FlutterFlowModel<AthleticHonorsComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for updateTitle widget.
  FocusNode? updateTitleFocusNode;
  TextEditingController? updateTitleTextController;
  String? Function(BuildContext, String?)? updateTitleTextControllerValidator;
  String? _updateTitleTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Title is required';
    }

    return null;
  }

  // State field(s) for updateDescription widget.
  FocusNode? updateDescriptionFocusNode;
  TextEditingController? updateDescriptionTextController;
  String? Function(BuildContext, String?)?
      updateDescriptionTextControllerValidator;
  String? _updateDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Description is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    updateTitleTextControllerValidator = _updateTitleTextControllerValidator;
    updateDescriptionTextControllerValidator =
        _updateDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    updateTitleFocusNode?.dispose();
    updateTitleTextController?.dispose();

    updateDescriptionFocusNode?.dispose();
    updateDescriptionTextController?.dispose();
  }
}
