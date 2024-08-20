import '/backend/backend.dart';
import '/components/promotion_component/promotion_component_widget.dart';
import '/components/sign_in_component/sign_in_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'account_exist_survey_widget.dart' show AccountExistSurveyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountExistSurveyModel
    extends FlutterFlowModel<AccountExistSurveyWidget> {
  ///  Local state fields for this page.

  bool emailSent = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
