import '/backend/backend.dart';
import '/components/data_updating_component/data_updating_component_widget.dart';
import '/components/promotion_component/promotion_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'success_survey_page2_widget.dart' show SuccessSurveyPage2Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SuccessSurveyPage2Model
    extends FlutterFlowModel<SuccessSurveyPage2Widget> {
  ///  Local state fields for this page.

  bool emailSent = false;

  ///  State fields for stateful widgets in this page.

  // Model for dataUpdatingComponent component.
  late DataUpdatingComponentModel dataUpdatingComponentModel;

  @override
  void initState(BuildContext context) {
    dataUpdatingComponentModel =
        createModel(context, () => DataUpdatingComponentModel());
  }

  @override
  void dispose() {
    dataUpdatingComponentModel.dispose();
  }
}
