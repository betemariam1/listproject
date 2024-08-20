// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetricsDataStruct extends FFFirebaseStruct {
  MetricsDataStruct({
    bool? isCertified,
    DateTime? timeStamp,
    DocumentReference? userRef,
    String? value,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _isCertified = isCertified,
        _timeStamp = timeStamp,
        _userRef = userRef,
        _value = value,
        super(firestoreUtilData);

  // "isCertified" field.
  bool? _isCertified;
  bool get isCertified => _isCertified ?? false;
  set isCertified(bool? val) => _isCertified = val;

  bool hasIsCertified() => _isCertified != null;

  // "timeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  set timeStamp(DateTime? val) => _timeStamp = val;

  bool hasTimeStamp() => _timeStamp != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  set userRef(DocumentReference? val) => _userRef = val;

  bool hasUserRef() => _userRef != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;

  bool hasValue() => _value != null;

  static MetricsDataStruct fromMap(Map<String, dynamic> data) =>
      MetricsDataStruct(
        isCertified: data['isCertified'] as bool?,
        timeStamp: data['timeStamp'] as DateTime?,
        userRef: data['userRef'] as DocumentReference?,
        value: data['value'] as String?,
      );

  static MetricsDataStruct? maybeFromMap(dynamic data) => data is Map
      ? MetricsDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'isCertified': _isCertified,
        'timeStamp': _timeStamp,
        'userRef': _userRef,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isCertified': serializeParam(
          _isCertified,
          ParamType.bool,
        ),
        'timeStamp': serializeParam(
          _timeStamp,
          ParamType.DateTime,
        ),
        'userRef': serializeParam(
          _userRef,
          ParamType.DocumentReference,
        ),
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
      }.withoutNulls;

  static MetricsDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      MetricsDataStruct(
        isCertified: deserializeParam(
          data['isCertified'],
          ParamType.bool,
          false,
        ),
        timeStamp: deserializeParam(
          data['timeStamp'],
          ParamType.DateTime,
          false,
        ),
        userRef: deserializeParam(
          data['userRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
      );

  static MetricsDataStruct fromAlgoliaData(Map<String, dynamic> data) =>
      MetricsDataStruct(
        isCertified: convertAlgoliaParam(
          data['isCertified'],
          ParamType.bool,
          false,
        ),
        timeStamp: convertAlgoliaParam(
          data['timeStamp'],
          ParamType.DateTime,
          false,
        ),
        userRef: convertAlgoliaParam(
          data['userRef'],
          ParamType.DocumentReference,
          false,
        ),
        value: convertAlgoliaParam(
          data['value'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'MetricsDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MetricsDataStruct &&
        isCertified == other.isCertified &&
        timeStamp == other.timeStamp &&
        userRef == other.userRef &&
        value == other.value;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([isCertified, timeStamp, userRef, value]);
}

MetricsDataStruct createMetricsDataStruct({
  bool? isCertified,
  DateTime? timeStamp,
  DocumentReference? userRef,
  String? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MetricsDataStruct(
      isCertified: isCertified,
      timeStamp: timeStamp,
      userRef: userRef,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MetricsDataStruct? updateMetricsDataStruct(
  MetricsDataStruct? metricsData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    metricsData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMetricsDataStructData(
  Map<String, dynamic> firestoreData,
  MetricsDataStruct? metricsData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (metricsData == null) {
    return;
  }
  if (metricsData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && metricsData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final metricsDataData =
      getMetricsDataFirestoreData(metricsData, forFieldValue);
  final nestedData =
      metricsDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = metricsData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMetricsDataFirestoreData(
  MetricsDataStruct? metricsData, [
  bool forFieldValue = false,
]) {
  if (metricsData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(metricsData.toMap());

  // Add any Firestore field values
  metricsData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMetricsDataListFirestoreData(
  List<MetricsDataStruct>? metricsDatas,
) =>
    metricsDatas?.map((e) => getMetricsDataFirestoreData(e, true)).toList() ??
    [];
