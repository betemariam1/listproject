import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/promotion_component/promotion_component_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/components/submit_component/submit_component_widget.dart';
import '/components/web_post_component/web_post_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'edit_page_widget.dart' show EditPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class EditPageModel extends FlutterFlowModel<EditPageWidget> {
  ///  Local state fields for this page.

  bool isShowFullList = true;

  String selectedOption = 'Personal';

  bool showFullList = true;

  List<DocumentReference> selectedCollegesList = [];
  void addToSelectedCollegesList(DocumentReference item) =>
      selectedCollegesList.add(item);
  void removeFromSelectedCollegesList(DocumentReference item) =>
      selectedCollegesList.remove(item);
  void removeAtIndexFromSelectedCollegesList(int index) =>
      selectedCollegesList.removeAt(index);
  void insertAtIndexInSelectedCollegesList(int index, DocumentReference item) =>
      selectedCollegesList.insert(index, item);
  void updateSelectedCollegesListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      selectedCollegesList[index] = updateFn(selectedCollegesList[index]);

  bool isExpanded = true;

  bool expand = false;

  ///  State fields for stateful widgets in this page.

  final formKey6 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey11 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey8 = GlobalKey<FormState>();
  final formKey15 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey13 = GlobalKey<FormState>();
  final formKey17 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey10 = GlobalKey<FormState>();
  final formKey9 = GlobalKey<FormState>();
  final formKey16 = GlobalKey<FormState>();
  final formKey19 = GlobalKey<FormState>();
  final formKey14 = GlobalKey<FormState>();
  final formKey18 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey12 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Read Document] action in editPage widget.
  TwitterUsersRecord? twitterUser;
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for DropDownThrow widget.
  String? dropDownThrowValue;
  FormFieldController<String>? dropDownThrowValueController;
  // State field(s) for DropDownBat widget.
  String? dropDownBatValue;
  FormFieldController<String>? dropDownBatValueController;
  // State field(s) for DropDownPrimaryPos widget.
  String? dropDownPrimaryPosValue;
  FormFieldController<String>? dropDownPrimaryPosValueController;
  // State field(s) for DropDownSecondaryPos widget.
  String? dropDownSecondaryPosValue;
  FormFieldController<String>? dropDownSecondaryPosValueController;
  // State field(s) for TextFieldFirstName widget.
  FocusNode? textFieldFirstNameFocusNode;
  TextEditingController? textFieldFirstNameTextController;
  String? Function(BuildContext, String?)?
      textFieldFirstNameTextControllerValidator;
  // State field(s) for TextFieldLastName widget.
  FocusNode? textFieldLastNameFocusNode;
  TextEditingController? textFieldLastNameTextController;
  String? Function(BuildContext, String?)?
      textFieldLastNameTextControllerValidator;
  // State field(s) for DropDownGradYear widget.
  String? dropDownGradYearValue;
  FormFieldController<String>? dropDownGradYearValueController;
  // State field(s) for TextFieldWeightedGPA2 widget.
  FocusNode? textFieldWeightedGPA2FocusNode;
  TextEditingController? textFieldWeightedGPA2TextController;
  String? Function(BuildContext, String?)?
      textFieldWeightedGPA2TextControllerValidator;
  String? _textFieldWeightedGPA2TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(2(\\.\\d{1,2})?|3(\\.\\d{1,2})?|4(\\.\\d{1,2})?|5(\\.\\d{1,2})?|6(\\.\\d{1,2})?|7(\\.0{1,2})?)\$')
        .hasMatch(val)) {
      return 'Enter amount that is between 2.00 - 7.00';
    }
    return null;
  }

  // State field(s) for DropDownSportType widget.
  String? dropDownSportTypeValue;
  FormFieldController<String>? dropDownSportTypeValueController;
  // State field(s) for TextFieldHighSchool widget.
  FocusNode? textFieldHighSchoolFocusNode;
  TextEditingController? textFieldHighSchoolTextController;
  String? Function(BuildContext, String?)?
      textFieldHighSchoolTextControllerValidator;
  // State field(s) for TextFieldCity widget.
  FocusNode? textFieldCityFocusNode;
  TextEditingController? textFieldCityTextController;
  String? Function(BuildContext, String?)? textFieldCityTextControllerValidator;
  // State field(s) for TextFieldACTTotal22 widget.
  FocusNode? textFieldACTTotal22FocusNode;
  TextEditingController? textFieldACTTotal22TextController;
  String? Function(BuildContext, String?)?
      textFieldACTTotal22TextControllerValidator;
  String? _textFieldACTTotal22TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(1(9(\\.\\d{1,2})?)|2[0-9](\\.\\d{1,2})?|3[0-6](\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 19 - 36';
    }
    return null;
  }

  // State field(s) for TextFieldSATTotal22 widget.
  FocusNode? textFieldSATTotal22FocusNode;
  TextEditingController? textFieldSATTotal22TextController;
  String? Function(BuildContext, String?)?
      textFieldSATTotal22TextControllerValidator;
  String? _textFieldSATTotal22TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(800(\\.\\d{1,2})?|8[0-9]{2}(\\.\\d{1,2})?|9[0-9]{2}(\\.\\d{1,2})?|1[0-5][0-9]{2}(\\.\\d{1,2})?|1600(\\.0{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 800 - 1600';
    }
    return null;
  }

  // State field(s) for TextFieldWeight44 widget.
  FocusNode? textFieldWeight44FocusNode;
  TextEditingController? textFieldWeight44TextController;
  String? Function(BuildContext, String?)?
      textFieldWeight44TextControllerValidator;
  String? _textFieldWeight44TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(70(\\.\\d{1,2})?|7[1-9](\\.\\d{1,2})?|8[0-9](\\.\\d{1,2})?|9[0-9](\\.\\d{1,2})?|1[0-9]{2}(\\.\\d{1,2})?|2[0-9]{2}(\\.\\d{1,2})?|3[0-9]{2}(\\.\\d{1,2})?|4[0-4][0-9](\\.\\d{1,2})?|450(\\.0{1,2})?)\$')
        .hasMatch(val)) {
      return 'Enter amount that is between 70 - 450';
    }
    return null;
  }

  // State field(s) for TextFieldHeightFeet widget.
  FocusNode? textFieldHeightFeetFocusNode;
  TextEditingController? textFieldHeightFeetTextController;
  String? Function(BuildContext, String?)?
      textFieldHeightFeetTextControllerValidator;
  String? _textFieldHeightFeetTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(4(\\.\\d{1,2})?|5(\\.\\d{1,2})?|6(\\.\\d{1,2})?|7(\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 4 - 7';
    }
    return null;
  }

  // State field(s) for TextFieldHeightInches widget.
  FocusNode? textFieldHeightInchesFocusNode;
  TextEditingController? textFieldHeightInchesTextController;
  String? Function(BuildContext, String?)?
      textFieldHeightInchesTextControllerValidator;
  String? _textFieldHeightInchesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(0(\\.\\d{1,2})?|1(\\.\\d{1,2})?|2(\\.\\d{1,2})?|3(\\.\\d{1,2})?|4(\\.\\d{1,2})?|5(\\.\\d{1,2})?|6(\\.\\d{1,2})?|7(\\.\\d{1,2})?|8(\\.\\d{1,2})?|9(\\.\\d{1,2})?|10(\\.\\d{1,2})?|11(\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 0 - 11';
    }
    return null;
  }

  // State field(s) for TextFieldFB4SVeloHigh widget.
  FocusNode? textFieldFB4SVeloHighFocusNode;
  TextEditingController? textFieldFB4SVeloHighTextController;
  String? Function(BuildContext, String?)?
      textFieldFB4SVeloHighTextControllerValidator;
  String? _textFieldFB4SVeloHighTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(50(\\.\\d{1,2})?|5[1-9](\\.\\d{1,2})?|6[0-9](\\.\\d{1,2})?|7[0-9](\\.\\d{1,2})?|8[0-9](\\.\\d{1,2})?|9[0-9](\\.\\d{1,2})?|10[0-5](\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 50 - 105';
    }
    return null;
  }

  // State field(s) for TextFieldFB4SVeloAverage widget.
  FocusNode? textFieldFB4SVeloAverageFocusNode;
  TextEditingController? textFieldFB4SVeloAverageTextController;
  String? Function(BuildContext, String?)?
      textFieldFB4SVeloAverageTextControllerValidator;
  String? _textFieldFB4SVeloAverageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(50(\\.\\d{1,2})?|5[1-9](\\.\\d{1,2})?|6[0-9](\\.\\d{1,2})?|7[0-9](\\.\\d{1,2})?|8[0-9](\\.\\d{1,2})?|9[0-9](\\.\\d{1,2})?|10[0-5](\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 50 - 105';
    }
    return null;
  }

  // State field(s) for TextFieldTFB widget.
  FocusNode? textFieldTFBFocusNode;
  TextEditingController? textFieldTFBTextController;
  String? Function(BuildContext, String?)? textFieldTFBTextControllerValidator;
  String? _textFieldTFBTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(50(\\.\\d{1,2})?|5[1-9](\\.\\d{1,2})?|6[0-9](\\.\\d{1,2})?|7[0-9](\\.\\d{1,2})?|8[0-9](\\.\\d{1,2})?|9[0-9](\\.\\d{1,2})?|10[0-5](\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 50 - 105';
    }
    return null;
  }

  // State field(s) for TextFieldOutfieldVelocity widget.
  FocusNode? textFieldOutfieldVelocityFocusNode;
  TextEditingController? textFieldOutfieldVelocityTextController;
  String? Function(BuildContext, String?)?
      textFieldOutfieldVelocityTextControllerValidator;
  String? _textFieldOutfieldVelocityTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(50(\\.\\d{1,2})?|5[1-9](\\.\\d{1,2})?|6[0-9](\\.\\d{1,2})?|7[0-9](\\.\\d{1,2})?|8[0-9](\\.\\d{1,2})?|9[0-9](\\.\\d{1,2})?|10[0-5](\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 50 - 105';
    }
    return null;
  }

  // State field(s) for TextFieldSLVeloHigh widget.
  FocusNode? textFieldSLVeloHighFocusNode;
  TextEditingController? textFieldSLVeloHighTextController;
  String? Function(BuildContext, String?)?
      textFieldSLVeloHighTextControllerValidator;
  String? _textFieldSLVeloHighTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(50(\\.\\d{1,2})?|5[1-9](\\.\\d{1,2})?|6[0-9](\\.\\d{1,2})?|7[0-9](\\.\\d{1,2})?|8[0-9](\\.\\d{1,2})?|9[0-9](\\.\\d{1,2})?|10[0-5](\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 50 - 105';
    }
    return null;
  }

  // State field(s) for TextFieldSLVeloAverage widget.
  FocusNode? textFieldSLVeloAverageFocusNode;
  TextEditingController? textFieldSLVeloAverageTextController;
  String? Function(BuildContext, String?)?
      textFieldSLVeloAverageTextControllerValidator;
  String? _textFieldSLVeloAverageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(50(\\.\\d{1,2})?|5[1-9](\\.\\d{1,2})?|6[0-9](\\.\\d{1,2})?|7[0-9](\\.\\d{1,2})?|8[0-9](\\.\\d{1,2})?|9[0-9](\\.\\d{1,2})?|10[0-5](\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 50 - 105';
    }
    return null;
  }

  // State field(s) for TextFieldCHVeloHigh widget.
  FocusNode? textFieldCHVeloHighFocusNode;
  TextEditingController? textFieldCHVeloHighTextController;
  String? Function(BuildContext, String?)?
      textFieldCHVeloHighTextControllerValidator;
  String? _textFieldCHVeloHighTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(50(\\.\\d{1,2})?|5[1-9](\\.\\d{1,2})?|6[0-9](\\.\\d{1,2})?|7[0-9](\\.\\d{1,2})?|8[0-9](\\.\\d{1,2})?|9[0-9](\\.\\d{1,2})?|10[0-5](\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 50 - 105';
    }
    return null;
  }

  // State field(s) for TextFieldFBCHVeloAverage widget.
  FocusNode? textFieldFBCHVeloAverageFocusNode;
  TextEditingController? textFieldFBCHVeloAverageTextController;
  String? Function(BuildContext, String?)?
      textFieldFBCHVeloAverageTextControllerValidator;
  String? _textFieldFBCHVeloAverageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(50(\\.\\d{1,2})?|5[1-9](\\.\\d{1,2})?|6[0-9](\\.\\d{1,2})?|7[0-9](\\.\\d{1,2})?|8[0-9](\\.\\d{1,2})?|9[0-9](\\.\\d{1,2})?|10[0-5](\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 50 - 105';
    }
    return null;
  }

  // State field(s) for TextFieldCBVeloHigh widget.
  FocusNode? textFieldCBVeloHighFocusNode;
  TextEditingController? textFieldCBVeloHighTextController;
  String? Function(BuildContext, String?)?
      textFieldCBVeloHighTextControllerValidator;
  String? _textFieldCBVeloHighTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(50(\\.\\d{1,2})?|5[1-9](\\.\\d{1,2})?|6[0-9](\\.\\d{1,2})?|7[0-9](\\.\\d{1,2})?|8[0-9](\\.\\d{1,2})?|9[0-9](\\.\\d{1,2})?|10[0-5](\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 50 - 105';
    }
    return null;
  }

  // State field(s) for TextFieldCBVeloAverage widget.
  FocusNode? textFieldCBVeloAverageFocusNode;
  TextEditingController? textFieldCBVeloAverageTextController;
  String? Function(BuildContext, String?)?
      textFieldCBVeloAverageTextControllerValidator;
  String? _textFieldCBVeloAverageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(50(\\.\\d{1,2})?|5[1-9](\\.\\d{1,2})?|6[0-9](\\.\\d{1,2})?|7[0-9](\\.\\d{1,2})?|8[0-9](\\.\\d{1,2})?|9[0-9](\\.\\d{1,2})?|10[0-5](\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 50 - 105';
    }
    return null;
  }

  // State field(s) for TextField60Time widget.
  FocusNode? textField60TimeFocusNode;
  TextEditingController? textField60TimeTextController;
  String? Function(BuildContext, String?)?
      textField60TimeTextControllerValidator;
  String? _textField60TimeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(6(\\.\\d{1,2})?|7(\\.\\d{1,2})?|8(\\.\\d{1,2})?|9(\\.\\d{1,2})?|10(\\.\\d{1,2})?|11(\\.\\d{1,2})?|12(\\.\\d{1,2})?|13(\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Enter amount that is between 6.00 - 13.00';
    }
    return null;
  }

  // State field(s) for TextFieldEV widget.
  FocusNode? textFieldEVFocusNode;
  TextEditingController? textFieldEVTextController;
  String? Function(BuildContext, String?)? textFieldEVTextControllerValidator;
  String? _textFieldEVTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(50(\\.\\d{1,2})?|5[1-9](\\.\\d{1,2})?|6[0-9](\\.\\d{1,2})?|7[0-9](\\.\\d{1,2})?|8[0-9](\\.\\d{1,2})?|9[0-9](\\.\\d{1,2})?|10[0-5](\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Enter amount that is between 50 - 105';
    }
    return null;
  }

  // State field(s) for TextFieldPopTime widget.
  FocusNode? textFieldPopTimeFocusNode;
  TextEditingController? textFieldPopTimeTextController;
  String? Function(BuildContext, String?)?
      textFieldPopTimeTextControllerValidator;
  String? _textFieldPopTimeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' ';
    }

    if (!RegExp(
            '^(1(\\.\\d{1,2})?|2(\\.\\d{1,2})?|3(\\.\\d{1,2})?|4(\\.\\d{1,2})?)\$')
        .hasMatch(val)) {
      return 'Range is 1 - 4';
    }
    return null;
  }

  // State field(s) for TextFieldSearch widget.
  FocusNode? textFieldSearchFocusNode;
  TextEditingController? textFieldSearchTextController;
  String? Function(BuildContext, String?)?
      textFieldSearchTextControllerValidator;
  List<CollegesRecord> simpleSearchResults = [];
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, CollegesRecord>?
      listViewPagingController2;
  Query? listViewPagingQuery2;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    textFieldWeightedGPA2TextControllerValidator =
        _textFieldWeightedGPA2TextControllerValidator;
    textFieldACTTotal22TextControllerValidator =
        _textFieldACTTotal22TextControllerValidator;
    textFieldSATTotal22TextControllerValidator =
        _textFieldSATTotal22TextControllerValidator;
    textFieldWeight44TextControllerValidator =
        _textFieldWeight44TextControllerValidator;
    textFieldHeightFeetTextControllerValidator =
        _textFieldHeightFeetTextControllerValidator;
    textFieldHeightInchesTextControllerValidator =
        _textFieldHeightInchesTextControllerValidator;
    textFieldFB4SVeloHighTextControllerValidator =
        _textFieldFB4SVeloHighTextControllerValidator;
    textFieldFB4SVeloAverageTextControllerValidator =
        _textFieldFB4SVeloAverageTextControllerValidator;
    textFieldTFBTextControllerValidator = _textFieldTFBTextControllerValidator;
    textFieldOutfieldVelocityTextControllerValidator =
        _textFieldOutfieldVelocityTextControllerValidator;
    textFieldSLVeloHighTextControllerValidator =
        _textFieldSLVeloHighTextControllerValidator;
    textFieldSLVeloAverageTextControllerValidator =
        _textFieldSLVeloAverageTextControllerValidator;
    textFieldCHVeloHighTextControllerValidator =
        _textFieldCHVeloHighTextControllerValidator;
    textFieldFBCHVeloAverageTextControllerValidator =
        _textFieldFBCHVeloAverageTextControllerValidator;
    textFieldCBVeloHighTextControllerValidator =
        _textFieldCBVeloHighTextControllerValidator;
    textFieldCBVeloAverageTextControllerValidator =
        _textFieldCBVeloAverageTextControllerValidator;
    textField60TimeTextControllerValidator =
        _textField60TimeTextControllerValidator;
    textFieldEVTextControllerValidator = _textFieldEVTextControllerValidator;
    textFieldPopTimeTextControllerValidator =
        _textFieldPopTimeTextControllerValidator;
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    textFieldFirstNameFocusNode?.dispose();
    textFieldFirstNameTextController?.dispose();

    textFieldLastNameFocusNode?.dispose();
    textFieldLastNameTextController?.dispose();

    textFieldWeightedGPA2FocusNode?.dispose();
    textFieldWeightedGPA2TextController?.dispose();

    textFieldHighSchoolFocusNode?.dispose();
    textFieldHighSchoolTextController?.dispose();

    textFieldCityFocusNode?.dispose();
    textFieldCityTextController?.dispose();

    textFieldACTTotal22FocusNode?.dispose();
    textFieldACTTotal22TextController?.dispose();

    textFieldSATTotal22FocusNode?.dispose();
    textFieldSATTotal22TextController?.dispose();

    textFieldWeight44FocusNode?.dispose();
    textFieldWeight44TextController?.dispose();

    textFieldHeightFeetFocusNode?.dispose();
    textFieldHeightFeetTextController?.dispose();

    textFieldHeightInchesFocusNode?.dispose();
    textFieldHeightInchesTextController?.dispose();

    textFieldFB4SVeloHighFocusNode?.dispose();
    textFieldFB4SVeloHighTextController?.dispose();

    textFieldFB4SVeloAverageFocusNode?.dispose();
    textFieldFB4SVeloAverageTextController?.dispose();

    textFieldTFBFocusNode?.dispose();
    textFieldTFBTextController?.dispose();

    textFieldOutfieldVelocityFocusNode?.dispose();
    textFieldOutfieldVelocityTextController?.dispose();

    textFieldSLVeloHighFocusNode?.dispose();
    textFieldSLVeloHighTextController?.dispose();

    textFieldSLVeloAverageFocusNode?.dispose();
    textFieldSLVeloAverageTextController?.dispose();

    textFieldCHVeloHighFocusNode?.dispose();
    textFieldCHVeloHighTextController?.dispose();

    textFieldFBCHVeloAverageFocusNode?.dispose();
    textFieldFBCHVeloAverageTextController?.dispose();

    textFieldCBVeloHighFocusNode?.dispose();
    textFieldCBVeloHighTextController?.dispose();

    textFieldCBVeloAverageFocusNode?.dispose();
    textFieldCBVeloAverageTextController?.dispose();

    textField60TimeFocusNode?.dispose();
    textField60TimeTextController?.dispose();

    textFieldEVFocusNode?.dispose();
    textFieldEVTextController?.dispose();

    textFieldPopTimeFocusNode?.dispose();
    textFieldPopTimeTextController?.dispose();

    textFieldSearchFocusNode?.dispose();
    textFieldSearchTextController?.dispose();

    listViewPagingController2?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, CollegesRecord> setListViewController2(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController2 ??= _createListViewController2(query, parent);
    if (listViewPagingQuery2 != query) {
      listViewPagingQuery2 = query;
      listViewPagingController2?.refresh();
    }
    return listViewPagingController2!;
  }

  PagingController<DocumentSnapshot?, CollegesRecord>
      _createListViewController2(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, CollegesRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryCollegesRecordPage(
          nextPageMarker: nextPageMarker,
          controller: controller,
          pageSize: 25,
          isStream: false,
        ),
      );
  }
}
