// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataField2Struct extends FFFirebaseStruct {
  DataField2Struct({
    String? name,
    double? value,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _value = value,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  set value(double? val) => _value = val;

  void incrementValue(double amount) => value = value + amount;

  bool hasValue() => _value != null;

  static DataField2Struct fromMap(Map<String, dynamic> data) =>
      DataField2Struct(
        name: data['name'] as String?,
        value: castToType<double>(data['value']),
      );

  static DataField2Struct? maybeFromMap(dynamic data) => data is Map
      ? DataField2Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.double,
        ),
      }.withoutNulls;

  static DataField2Struct fromSerializableMap(Map<String, dynamic> data) =>
      DataField2Struct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.double,
          false,
        ),
      );

  static DataField2Struct fromAlgoliaData(Map<String, dynamic> data) =>
      DataField2Struct(
        name: convertAlgoliaParam(
          data['name'],
          ParamType.String,
          false,
        ),
        value: convertAlgoliaParam(
          data['value'],
          ParamType.double,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'DataField2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataField2Struct &&
        name == other.name &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([name, value]);
}

DataField2Struct createDataField2Struct({
  String? name,
  double? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DataField2Struct(
      name: name,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DataField2Struct? updateDataField2Struct(
  DataField2Struct? dataField2, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dataField2
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDataField2StructData(
  Map<String, dynamic> firestoreData,
  DataField2Struct? dataField2,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dataField2 == null) {
    return;
  }
  if (dataField2.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dataField2.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dataField2Data = getDataField2FirestoreData(dataField2, forFieldValue);
  final nestedData = dataField2Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dataField2.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDataField2FirestoreData(
  DataField2Struct? dataField2, [
  bool forFieldValue = false,
]) {
  if (dataField2 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dataField2.toMap());

  // Add any Firestore field values
  dataField2.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDataField2ListFirestoreData(
  List<DataField2Struct>? dataField2s,
) =>
    dataField2s?.map((e) => getDataField2FirestoreData(e, true)).toList() ?? [];
