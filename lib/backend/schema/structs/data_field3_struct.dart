// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataField3Struct extends FFFirebaseStruct {
  DataField3Struct({
    String? name,
    int? value,
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
  int? _value;
  int get value => _value ?? 0;
  set value(int? val) => _value = val;

  void incrementValue(int amount) => value = value + amount;

  bool hasValue() => _value != null;

  static DataField3Struct fromMap(Map<String, dynamic> data) =>
      DataField3Struct(
        name: data['name'] as String?,
        value: castToType<int>(data['value']),
      );

  static DataField3Struct? maybeFromMap(dynamic data) => data is Map
      ? DataField3Struct.fromMap(data.cast<String, dynamic>())
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
          ParamType.int,
        ),
      }.withoutNulls;

  static DataField3Struct fromSerializableMap(Map<String, dynamic> data) =>
      DataField3Struct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.int,
          false,
        ),
      );

  static DataField3Struct fromAlgoliaData(Map<String, dynamic> data) =>
      DataField3Struct(
        name: convertAlgoliaParam(
          data['name'],
          ParamType.String,
          false,
        ),
        value: convertAlgoliaParam(
          data['value'],
          ParamType.int,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'DataField3Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataField3Struct &&
        name == other.name &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([name, value]);
}

DataField3Struct createDataField3Struct({
  String? name,
  int? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DataField3Struct(
      name: name,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DataField3Struct? updateDataField3Struct(
  DataField3Struct? dataField3, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dataField3
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDataField3StructData(
  Map<String, dynamic> firestoreData,
  DataField3Struct? dataField3,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dataField3 == null) {
    return;
  }
  if (dataField3.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dataField3.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dataField3Data = getDataField3FirestoreData(dataField3, forFieldValue);
  final nestedData = dataField3Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dataField3.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDataField3FirestoreData(
  DataField3Struct? dataField3, [
  bool forFieldValue = false,
]) {
  if (dataField3 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dataField3.toMap());

  // Add any Firestore field values
  dataField3.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDataField3ListFirestoreData(
  List<DataField3Struct>? dataField3s,
) =>
    dataField3s?.map((e) => getDataField3FirestoreData(e, true)).toList() ?? [];
