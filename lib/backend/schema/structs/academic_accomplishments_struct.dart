// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AcademicAccomplishmentsStruct extends FFFirebaseStruct {
  AcademicAccomplishmentsStruct({
    String? title,
    String? description,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _description = description,
        super(firestoreUtilData);

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static AcademicAccomplishmentsStruct fromMap(Map<String, dynamic> data) =>
      AcademicAccomplishmentsStruct(
        title: data['Title'] as String?,
        description: data['Description'] as String?,
      );

  static AcademicAccomplishmentsStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? AcademicAccomplishmentsStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'Title': _title,
        'Description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Title': serializeParam(
          _title,
          ParamType.String,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static AcademicAccomplishmentsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AcademicAccomplishmentsStruct(
        title: deserializeParam(
          data['Title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['Description'],
          ParamType.String,
          false,
        ),
      );

  static AcademicAccomplishmentsStruct fromAlgoliaData(
          Map<String, dynamic> data) =>
      AcademicAccomplishmentsStruct(
        title: convertAlgoliaParam(
          data['Title'],
          ParamType.String,
          false,
        ),
        description: convertAlgoliaParam(
          data['Description'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'AcademicAccomplishmentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AcademicAccomplishmentsStruct &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([title, description]);
}

AcademicAccomplishmentsStruct createAcademicAccomplishmentsStruct({
  String? title,
  String? description,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AcademicAccomplishmentsStruct(
      title: title,
      description: description,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AcademicAccomplishmentsStruct? updateAcademicAccomplishmentsStruct(
  AcademicAccomplishmentsStruct? academicAccomplishments, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    academicAccomplishments
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAcademicAccomplishmentsStructData(
  Map<String, dynamic> firestoreData,
  AcademicAccomplishmentsStruct? academicAccomplishments,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (academicAccomplishments == null) {
    return;
  }
  if (academicAccomplishments.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      academicAccomplishments.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final academicAccomplishmentsData = getAcademicAccomplishmentsFirestoreData(
      academicAccomplishments, forFieldValue);
  final nestedData =
      academicAccomplishmentsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      academicAccomplishments.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAcademicAccomplishmentsFirestoreData(
  AcademicAccomplishmentsStruct? academicAccomplishments, [
  bool forFieldValue = false,
]) {
  if (academicAccomplishments == null) {
    return {};
  }
  final firestoreData = mapToFirestore(academicAccomplishments.toMap());

  // Add any Firestore field values
  academicAccomplishments.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAcademicAccomplishmentsListFirestoreData(
  List<AcademicAccomplishmentsStruct>? academicAccomplishmentss,
) =>
    academicAccomplishmentss
        ?.map((e) => getAcademicAccomplishmentsFirestoreData(e, true))
        .toList() ??
    [];
