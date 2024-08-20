// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CampFieldsStruct extends FFFirebaseStruct {
  CampFieldsStruct({
    String? title,
    String? description,
    String? iconUrl,
    String? inputValue,
    bool? inputRequired,
    List<String>? options,
    bool? isDropDown,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _description = description,
        _iconUrl = iconUrl,
        _inputValue = inputValue,
        _inputRequired = inputRequired,
        _options = options,
        _isDropDown = isDropDown,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "icon_url" field.
  String? _iconUrl;
  String get iconUrl => _iconUrl ?? '';
  set iconUrl(String? val) => _iconUrl = val;

  bool hasIconUrl() => _iconUrl != null;

  // "input_value" field.
  String? _inputValue;
  String get inputValue => _inputValue ?? '';
  set inputValue(String? val) => _inputValue = val;

  bool hasInputValue() => _inputValue != null;

  // "Input_required" field.
  bool? _inputRequired;
  bool get inputRequired => _inputRequired ?? false;
  set inputRequired(bool? val) => _inputRequired = val;

  bool hasInputRequired() => _inputRequired != null;

  // "options" field.
  List<String>? _options;
  List<String> get options => _options ?? const [];
  set options(List<String>? val) => _options = val;

  void updateOptions(Function(List<String>) updateFn) {
    updateFn(_options ??= []);
  }

  bool hasOptions() => _options != null;

  // "isDropDown" field.
  bool? _isDropDown;
  bool get isDropDown => _isDropDown ?? false;
  set isDropDown(bool? val) => _isDropDown = val;

  bool hasIsDropDown() => _isDropDown != null;

  static CampFieldsStruct fromMap(Map<String, dynamic> data) =>
      CampFieldsStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        iconUrl: data['icon_url'] as String?,
        inputValue: data['input_value'] as String?,
        inputRequired: data['Input_required'] as bool?,
        options: getDataList(data['options']),
        isDropDown: data['isDropDown'] as bool?,
      );

  static CampFieldsStruct? maybeFromMap(dynamic data) => data is Map
      ? CampFieldsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'icon_url': _iconUrl,
        'input_value': _inputValue,
        'Input_required': _inputRequired,
        'options': _options,
        'isDropDown': _isDropDown,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'icon_url': serializeParam(
          _iconUrl,
          ParamType.String,
        ),
        'input_value': serializeParam(
          _inputValue,
          ParamType.String,
        ),
        'Input_required': serializeParam(
          _inputRequired,
          ParamType.bool,
        ),
        'options': serializeParam(
          _options,
          ParamType.String,
          isList: true,
        ),
        'isDropDown': serializeParam(
          _isDropDown,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CampFieldsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CampFieldsStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        iconUrl: deserializeParam(
          data['icon_url'],
          ParamType.String,
          false,
        ),
        inputValue: deserializeParam(
          data['input_value'],
          ParamType.String,
          false,
        ),
        inputRequired: deserializeParam(
          data['Input_required'],
          ParamType.bool,
          false,
        ),
        options: deserializeParam<String>(
          data['options'],
          ParamType.String,
          true,
        ),
        isDropDown: deserializeParam(
          data['isDropDown'],
          ParamType.bool,
          false,
        ),
      );

  static CampFieldsStruct fromAlgoliaData(Map<String, dynamic> data) =>
      CampFieldsStruct(
        title: convertAlgoliaParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: convertAlgoliaParam(
          data['description'],
          ParamType.String,
          false,
        ),
        iconUrl: convertAlgoliaParam(
          data['icon_url'],
          ParamType.String,
          false,
        ),
        inputValue: convertAlgoliaParam(
          data['input_value'],
          ParamType.String,
          false,
        ),
        inputRequired: convertAlgoliaParam(
          data['Input_required'],
          ParamType.bool,
          false,
        ),
        options: convertAlgoliaParam<String>(
          data['options'],
          ParamType.String,
          true,
        ),
        isDropDown: convertAlgoliaParam(
          data['isDropDown'],
          ParamType.bool,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'CampFieldsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CampFieldsStruct &&
        title == other.title &&
        description == other.description &&
        iconUrl == other.iconUrl &&
        inputValue == other.inputValue &&
        inputRequired == other.inputRequired &&
        listEquality.equals(options, other.options) &&
        isDropDown == other.isDropDown;
  }

  @override
  int get hashCode => const ListEquality().hash([
        title,
        description,
        iconUrl,
        inputValue,
        inputRequired,
        options,
        isDropDown
      ]);
}

CampFieldsStruct createCampFieldsStruct({
  String? title,
  String? description,
  String? iconUrl,
  String? inputValue,
  bool? inputRequired,
  bool? isDropDown,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CampFieldsStruct(
      title: title,
      description: description,
      iconUrl: iconUrl,
      inputValue: inputValue,
      inputRequired: inputRequired,
      isDropDown: isDropDown,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CampFieldsStruct? updateCampFieldsStruct(
  CampFieldsStruct? campFields, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    campFields
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCampFieldsStructData(
  Map<String, dynamic> firestoreData,
  CampFieldsStruct? campFields,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (campFields == null) {
    return;
  }
  if (campFields.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && campFields.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final campFieldsData = getCampFieldsFirestoreData(campFields, forFieldValue);
  final nestedData = campFieldsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = campFields.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCampFieldsFirestoreData(
  CampFieldsStruct? campFields, [
  bool forFieldValue = false,
]) {
  if (campFields == null) {
    return {};
  }
  final firestoreData = mapToFirestore(campFields.toMap());

  // Add any Firestore field values
  campFields.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCampFieldsListFirestoreData(
  List<CampFieldsStruct>? campFieldss,
) =>
    campFieldss?.map((e) => getCampFieldsFirestoreData(e, true)).toList() ?? [];
