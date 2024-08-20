import '/backend/backend.dart';
import '/components/sign_in_component/sign_in_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'survey_page_confirm_widget.dart' show SurveyPageConfirmWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SurveyPageConfirmModel extends FlutterFlowModel<SurveyPageConfirmWidget> {
  ///  Local state fields for this page.

  bool emailSent = false;

  bool twitterUserNameSet = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
