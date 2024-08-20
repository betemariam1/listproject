// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataFieldStruct extends FFFirebaseStruct {
  DataFieldStruct({
    String? name,
    String? value,
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
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;

  bool hasValue() => _value != null;

  static DataFieldStruct fromMap(Map<String, dynamic> data) => DataFieldStruct(
        name: data['name'] as String?,
        value: data['value'] as String?,
      );

  static DataFieldStruct? maybeFromMap(dynamic data) => data is Map
      ? DataFieldStruct.fromMap(data.cast<String, dynamic>())
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
          ParamType.String,
        ),
      }.withoutNulls;

  static DataFieldStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataFieldStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
      );

  static DataFieldStruct fromAlgoliaData(Map<String, dynamic> data) =>
      DataFieldStruct(
        name: convertAlgoliaParam(
          data['name'],
          ParamType.String,
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
  String toString() => 'DataFieldStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataFieldStruct &&
        name == other.name &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([name, value]);
}

DataFieldStruct createDataFieldStruct({
  String? name,
  String? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DataFieldStruct(
      name: name,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DataFieldStruct? updateDataFieldStruct(
  DataFieldStruct? dataField, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dataField
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDataFieldStructData(
  Map<String, dynamic> firestoreData,
  DataFieldStruct? dataField,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dataField == null) {
    return;
  }
  if (dataField.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dataField.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dataFieldData = getDataFieldFirestoreData(dataField, forFieldValue);
  final nestedData = dataFieldData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dataField.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDataFieldFirestoreData(
  DataFieldStruct? dataField, [
  bool forFieldValue = false,
]) {
  if (dataField == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dataField.toMap());

  // Add any Firestore field values
  dataField.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDataFieldListFirestoreData(
  List<DataFieldStruct>? dataFields,
) =>
    dataFields?.map((e) => getDataFieldFirestoreData(e, true)).toList() ?? [];
