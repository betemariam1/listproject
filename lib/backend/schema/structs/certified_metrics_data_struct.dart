// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CertifiedMetricsDataStruct extends FFFirebaseStruct {
  CertifiedMetricsDataStruct({
    String? title,
    double? value1,
    double? value2,
    String? value1Title,
    String? value2Title,
    bool? has2Values,
    String? iconUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _value1 = value1,
        _value2 = value2,
        _value1Title = value1Title,
        _value2Title = value2Title,
        _has2Values = has2Values,
        _iconUrl = iconUrl,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "value1" field.
  double? _value1;
  double get value1 => _value1 ?? 0.0;
  set value1(double? val) => _value1 = val;

  void incrementValue1(double amount) => value1 = value1 + amount;

  bool hasValue1() => _value1 != null;

  // "value2" field.
  double? _value2;
  double get value2 => _value2 ?? 0.0;
  set value2(double? val) => _value2 = val;

  void incrementValue2(double amount) => value2 = value2 + amount;

  bool hasValue2() => _value2 != null;

  // "value1Title" field.
  String? _value1Title;
  String get value1Title => _value1Title ?? '';
  set value1Title(String? val) => _value1Title = val;

  bool hasValue1Title() => _value1Title != null;

  // "value2Title" field.
  String? _value2Title;
  String get value2Title => _value2Title ?? '';
  set value2Title(String? val) => _value2Title = val;

  bool hasValue2Title() => _value2Title != null;

  // "has2Values" field.
  bool? _has2Values;
  bool get has2Values => _has2Values ?? false;
  set has2Values(bool? val) => _has2Values = val;

  bool hasHas2Values() => _has2Values != null;

  // "iconUrl" field.
  String? _iconUrl;
  String get iconUrl => _iconUrl ?? '';
  set iconUrl(String? val) => _iconUrl = val;

  bool hasIconUrl() => _iconUrl != null;

  static CertifiedMetricsDataStruct fromMap(Map<String, dynamic> data) =>
      CertifiedMetricsDataStruct(
        title: data['title'] as String?,
        value1: castToType<double>(data['value1']),
        value2: castToType<double>(data['value2']),
        value1Title: data['value1Title'] as String?,
        value2Title: data['value2Title'] as String?,
        has2Values: data['has2Values'] as bool?,
        iconUrl: data['iconUrl'] as String?,
      );

  static CertifiedMetricsDataStruct? maybeFromMap(dynamic data) => data is Map
      ? CertifiedMetricsDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'value1': _value1,
        'value2': _value2,
        'value1Title': _value1Title,
        'value2Title': _value2Title,
        'has2Values': _has2Values,
        'iconUrl': _iconUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'value1': serializeParam(
          _value1,
          ParamType.double,
        ),
        'value2': serializeParam(
          _value2,
          ParamType.double,
        ),
        'value1Title': serializeParam(
          _value1Title,
          ParamType.String,
        ),
        'value2Title': serializeParam(
          _value2Title,
          ParamType.String,
        ),
        'has2Values': serializeParam(
          _has2Values,
          ParamType.bool,
        ),
        'iconUrl': serializeParam(
          _iconUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static CertifiedMetricsDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CertifiedMetricsDataStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        value1: deserializeParam(
          data['value1'],
          ParamType.double,
          false,
        ),
        value2: deserializeParam(
          data['value2'],
          ParamType.double,
          false,
        ),
        value1Title: deserializeParam(
          data['value1Title'],
          ParamType.String,
          false,
        ),
        value2Title: deserializeParam(
          data['value2Title'],
          ParamType.String,
          false,
        ),
        has2Values: deserializeParam(
          data['has2Values'],
          ParamType.bool,
          false,
        ),
        iconUrl: deserializeParam(
          data['iconUrl'],
          ParamType.String,
          false,
        ),
      );

  static CertifiedMetricsDataStruct fromAlgoliaData(
          Map<String, dynamic> data) =>
      CertifiedMetricsDataStruct(
        title: convertAlgoliaParam(
          data['title'],
          ParamType.String,
          false,
        ),
        value1: convertAlgoliaParam(
          data['value1'],
          ParamType.double,
          false,
        ),
        value2: convertAlgoliaParam(
          data['value2'],
          ParamType.double,
          false,
        ),
        value1Title: convertAlgoliaParam(
          data['value1Title'],
          ParamType.String,
          false,
        ),
        value2Title: convertAlgoliaParam(
          data['value2Title'],
          ParamType.String,
          false,
        ),
        has2Values: convertAlgoliaParam(
          data['has2Values'],
          ParamType.bool,
          false,
        ),
        iconUrl: convertAlgoliaParam(
          data['iconUrl'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'CertifiedMetricsDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CertifiedMetricsDataStruct &&
        title == other.title &&
        value1 == other.value1 &&
        value2 == other.value2 &&
        value1Title == other.value1Title &&
        value2Title == other.value2Title &&
        has2Values == other.has2Values &&
        iconUrl == other.iconUrl;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [title, value1, value2, value1Title, value2Title, has2Values, iconUrl]);
}

CertifiedMetricsDataStruct createCertifiedMetricsDataStruct({
  String? title,
  double? value1,
  double? value2,
  String? value1Title,
  String? value2Title,
  bool? has2Values,
  String? iconUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CertifiedMetricsDataStruct(
      title: title,
      value1: value1,
      value2: value2,
      value1Title: value1Title,
      value2Title: value2Title,
      has2Values: has2Values,
      iconUrl: iconUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CertifiedMetricsDataStruct? updateCertifiedMetricsDataStruct(
  CertifiedMetricsDataStruct? certifiedMetricsData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    certifiedMetricsData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCertifiedMetricsDataStructData(
  Map<String, dynamic> firestoreData,
  CertifiedMetricsDataStruct? certifiedMetricsData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (certifiedMetricsData == null) {
    return;
  }
  if (certifiedMetricsData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && certifiedMetricsData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final certifiedMetricsDataData =
      getCertifiedMetricsDataFirestoreData(certifiedMetricsData, forFieldValue);
  final nestedData =
      certifiedMetricsDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      certifiedMetricsData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCertifiedMetricsDataFirestoreData(
  CertifiedMetricsDataStruct? certifiedMetricsData, [
  bool forFieldValue = false,
]) {
  if (certifiedMetricsData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(certifiedMetricsData.toMap());

  // Add any Firestore field values
  certifiedMetricsData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCertifiedMetricsDataListFirestoreData(
  List<CertifiedMetricsDataStruct>? certifiedMetricsDatas,
) =>
    certifiedMetricsDatas
        ?.map((e) => getCertifiedMetricsDataFirestoreData(e, true))
        .toList() ??
    [];
