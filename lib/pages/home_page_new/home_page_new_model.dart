import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/connect_twitter_component/connect_twitter_component_widget.dart';
import '/components/create_account_component_home/create_account_component_home_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/components/sign_in_component/sign_in_component_widget.dart';
import '/components/web_post_component/web_post_component_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_new_widget.dart' show HomePageNewWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class HomePageNewModel extends FlutterFlowModel<HomePageNewWidget> {
  ///  Local state fields for this page.

  bool isShowFullList = true;

  bool expand = false;

  bool isExpanded = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in TextField widget.
  List<TwitterUsersRecord>? twitterUsersList;
  List<TwitterUsersRecord> simpleSearchResults = [];
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<TwitterUsersRecord>();
  // State field(s) for Checkbox1 widget.
  bool? checkbox1Value;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkbox1 widget.
  List<ProspectsRecord>? actionProspect;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkbox1 widget.
  List<ProspectsRecord>? allp2;
  // Stores action output result for [Backend Call - Create Document] action in Checkbox1 widget.
  ProspectsRecord? pro;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkbox1 widget.
  List<ProspectsRecord>? allProspects;
  // Stores action output result for [Backend Call - Create Document] action in Checkbox1 widget.
  ProspectsRecord? createProspectCopy2;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ProspectsRecord? createProspect11;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    sideNavModel.dispose();
  }
}
