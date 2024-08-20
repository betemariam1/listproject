// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SatStruct extends FFFirebaseStruct {
  SatStruct({
    int? math,
    int? english,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _math = math,
        _english = english,
        super(firestoreUtilData);

  // "Math" field.
  int? _math;
  int get math => _math ?? 0;
  set math(int? val) => _math = val;

  void incrementMath(int amount) => math = math + amount;

  bool hasMath() => _math != null;

  // "English" field.
  int? _english;
  int get english => _english ?? 0;
  set english(int? val) => _english = val;

  void incrementEnglish(int amount) => english = english + amount;

  bool hasEnglish() => _english != null;

  static SatStruct fromMap(Map<String, dynamic> data) => SatStruct(
        math: castToType<int>(data['Math']),
        english: castToType<int>(data['English']),
      );

  static SatStruct? maybeFromMap(dynamic data) =>
      data is Map ? SatStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Math': _math,
        'English': _english,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Math': serializeParam(
          _math,
          ParamType.int,
        ),
        'English': serializeParam(
          _english,
          ParamType.int,
        ),
      }.withoutNulls;

  static SatStruct fromSerializableMap(Map<String, dynamic> data) => SatStruct(
        math: deserializeParam(
          data['Math'],
          ParamType.int,
          false,
        ),
        english: deserializeParam(
          data['English'],
          ParamType.int,
          false,
        ),
      );

  static SatStruct fromAlgoliaData(Map<String, dynamic> data) => SatStruct(
        math: convertAlgoliaParam(
          data['Math'],
          ParamType.int,
          false,
        ),
        english: convertAlgoliaParam(
          data['English'],
          ParamType.int,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'SatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SatStruct && math == other.math && english == other.english;
  }

  @override
  int get hashCode => const ListEquality().hash([math, english]);
}

SatStruct createSatStruct({
  int? math,
  int? english,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SatStruct(
      math: math,
      english: english,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SatStruct? updateSatStruct(
  SatStruct? sat, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sat
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSatStructData(
  Map<String, dynamic> firestoreData,
  SatStruct? sat,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sat == null) {
    return;
  }
  if (sat.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && sat.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final satData = getSatFirestoreData(sat, forFieldValue);
  final nestedData = satData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sat.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSatFirestoreData(
  SatStruct? sat, [
  bool forFieldValue = false,
]) {
  if (sat == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sat.toMap());

  // Add any Firestore field values
  sat.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSatListFirestoreData(
  List<SatStruct>? sats,
) =>
    sats?.map((e) => getSatFirestoreData(e, true)).toList() ?? [];
