// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActStruct extends FFFirebaseStruct {
  ActStruct({
    String? composite,
    String? english,
    String? math,
    String? reading,
    String? science,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _composite = composite,
        _english = english,
        _math = math,
        _reading = reading,
        _science = science,
        super(firestoreUtilData);

  // "Composite" field.
  String? _composite;
  String get composite => _composite ?? '';
  set composite(String? val) => _composite = val;

  bool hasComposite() => _composite != null;

  // "English" field.
  String? _english;
  String get english => _english ?? '';
  set english(String? val) => _english = val;

  bool hasEnglish() => _english != null;

  // "Math" field.
  String? _math;
  String get math => _math ?? '';
  set math(String? val) => _math = val;

  bool hasMath() => _math != null;

  // "Reading" field.
  String? _reading;
  String get reading => _reading ?? '';
  set reading(String? val) => _reading = val;

  bool hasReading() => _reading != null;

  // "Science" field.
  String? _science;
  String get science => _science ?? '';
  set science(String? val) => _science = val;

  bool hasScience() => _science != null;

  static ActStruct fromMap(Map<String, dynamic> data) => ActStruct(
        composite: data['Composite'] as String?,
        english: data['English'] as String?,
        math: data['Math'] as String?,
        reading: data['Reading'] as String?,
        science: data['Science'] as String?,
      );

  static ActStruct? maybeFromMap(dynamic data) =>
      data is Map ? ActStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Composite': _composite,
        'English': _english,
        'Math': _math,
        'Reading': _reading,
        'Science': _science,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Composite': serializeParam(
          _composite,
          ParamType.String,
        ),
        'English': serializeParam(
          _english,
          ParamType.String,
        ),
        'Math': serializeParam(
          _math,
          ParamType.String,
        ),
        'Reading': serializeParam(
          _reading,
          ParamType.String,
        ),
        'Science': serializeParam(
          _science,
          ParamType.String,
        ),
      }.withoutNulls;

  static ActStruct fromSerializableMap(Map<String, dynamic> data) => ActStruct(
        composite: deserializeParam(
          data['Composite'],
          ParamType.String,
          false,
        ),
        english: deserializeParam(
          data['English'],
          ParamType.String,
          false,
        ),
        math: deserializeParam(
          data['Math'],
          ParamType.String,
          false,
        ),
        reading: deserializeParam(
          data['Reading'],
          ParamType.String,
          false,
        ),
        science: deserializeParam(
          data['Science'],
          ParamType.String,
          false,
        ),
      );

  static ActStruct fromAlgoliaData(Map<String, dynamic> data) => ActStruct(
        composite: convertAlgoliaParam(
          data['Composite'],
          ParamType.String,
          false,
        ),
        english: convertAlgoliaParam(
          data['English'],
          ParamType.String,
          false,
        ),
        math: convertAlgoliaParam(
          data['Math'],
          ParamType.String,
          false,
        ),
        reading: convertAlgoliaParam(
          data['Reading'],
          ParamType.String,
          false,
        ),
        science: convertAlgoliaParam(
          data['Science'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'ActStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ActStruct &&
        composite == other.composite &&
        english == other.english &&
        math == other.math &&
        reading == other.reading &&
        science == other.science;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([composite, english, math, reading, science]);
}

ActStruct createActStruct({
  String? composite,
  String? english,
  String? math,
  String? reading,
  String? science,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ActStruct(
      composite: composite,
      english: english,
      math: math,
      reading: reading,
      science: science,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ActStruct? updateActStruct(
  ActStruct? act, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    act
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addActStructData(
  Map<String, dynamic> firestoreData,
  ActStruct? act,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (act == null) {
    return;
  }
  if (act.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && act.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final actData = getActFirestoreData(act, forFieldValue);
  final nestedData = actData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = act.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getActFirestoreData(
  ActStruct? act, [
  bool forFieldValue = false,
]) {
  if (act == null) {
    return {};
  }
  final firestoreData = mapToFirestore(act.toMap());

  // Add any Firestore field values
  act.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getActListFirestoreData(
  List<ActStruct>? acts,
) =>
    acts?.map((e) => getActFirestoreData(e, true)).toList() ?? [];
