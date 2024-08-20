// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OnboardingFilesStruct extends FFFirebaseStruct {
  OnboardingFilesStruct({
    String? firstName,
    String? lastName,
    String? cellPhone,
    DocumentReference? collegeRef,
    String? typeOfCoach,
    String? orgName,
    String? jobTitle,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _firstName = firstName,
        _lastName = lastName,
        _cellPhone = cellPhone,
        _collegeRef = collegeRef,
        _typeOfCoach = typeOfCoach,
        _orgName = orgName,
        _jobTitle = jobTitle,
        super(firestoreUtilData);

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "cellPhone" field.
  String? _cellPhone;
  String get cellPhone => _cellPhone ?? '';
  set cellPhone(String? val) => _cellPhone = val;

  bool hasCellPhone() => _cellPhone != null;

  // "collegeRef" field.
  DocumentReference? _collegeRef;
  DocumentReference? get collegeRef => _collegeRef;
  set collegeRef(DocumentReference? val) => _collegeRef = val;

  bool hasCollegeRef() => _collegeRef != null;

  // "typeOfCoach" field.
  String? _typeOfCoach;
  String get typeOfCoach => _typeOfCoach ?? '';
  set typeOfCoach(String? val) => _typeOfCoach = val;

  bool hasTypeOfCoach() => _typeOfCoach != null;

  // "orgName" field.
  String? _orgName;
  String get orgName => _orgName ?? '';
  set orgName(String? val) => _orgName = val;

  bool hasOrgName() => _orgName != null;

  // "jobTitle" field.
  String? _jobTitle;
  String get jobTitle => _jobTitle ?? '';
  set jobTitle(String? val) => _jobTitle = val;

  bool hasJobTitle() => _jobTitle != null;

  static OnboardingFilesStruct fromMap(Map<String, dynamic> data) =>
      OnboardingFilesStruct(
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        cellPhone: data['cellPhone'] as String?,
        collegeRef: data['collegeRef'] as DocumentReference?,
        typeOfCoach: data['typeOfCoach'] as String?,
        orgName: data['orgName'] as String?,
        jobTitle: data['jobTitle'] as String?,
      );

  static OnboardingFilesStruct? maybeFromMap(dynamic data) => data is Map
      ? OnboardingFilesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'cellPhone': _cellPhone,
        'collegeRef': _collegeRef,
        'typeOfCoach': _typeOfCoach,
        'orgName': _orgName,
        'jobTitle': _jobTitle,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'cellPhone': serializeParam(
          _cellPhone,
          ParamType.String,
        ),
        'collegeRef': serializeParam(
          _collegeRef,
          ParamType.DocumentReference,
        ),
        'typeOfCoach': serializeParam(
          _typeOfCoach,
          ParamType.String,
        ),
        'orgName': serializeParam(
          _orgName,
          ParamType.String,
        ),
        'jobTitle': serializeParam(
          _jobTitle,
          ParamType.String,
        ),
      }.withoutNulls;

  static OnboardingFilesStruct fromSerializableMap(Map<String, dynamic> data) =>
      OnboardingFilesStruct(
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        cellPhone: deserializeParam(
          data['cellPhone'],
          ParamType.String,
          false,
        ),
        collegeRef: deserializeParam(
          data['collegeRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['colleges'],
        ),
        typeOfCoach: deserializeParam(
          data['typeOfCoach'],
          ParamType.String,
          false,
        ),
        orgName: deserializeParam(
          data['orgName'],
          ParamType.String,
          false,
        ),
        jobTitle: deserializeParam(
          data['jobTitle'],
          ParamType.String,
          false,
        ),
      );

  static OnboardingFilesStruct fromAlgoliaData(Map<String, dynamic> data) =>
      OnboardingFilesStruct(
        firstName: convertAlgoliaParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: convertAlgoliaParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        cellPhone: convertAlgoliaParam(
          data['cellPhone'],
          ParamType.String,
          false,
        ),
        collegeRef: convertAlgoliaParam(
          data['collegeRef'],
          ParamType.DocumentReference,
          false,
        ),
        typeOfCoach: convertAlgoliaParam(
          data['typeOfCoach'],
          ParamType.String,
          false,
        ),
        orgName: convertAlgoliaParam(
          data['orgName'],
          ParamType.String,
          false,
        ),
        jobTitle: convertAlgoliaParam(
          data['jobTitle'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'OnboardingFilesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OnboardingFilesStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        cellPhone == other.cellPhone &&
        collegeRef == other.collegeRef &&
        typeOfCoach == other.typeOfCoach &&
        orgName == other.orgName &&
        jobTitle == other.jobTitle;
  }

  @override
  int get hashCode => const ListEquality().hash([
        firstName,
        lastName,
        cellPhone,
        collegeRef,
        typeOfCoach,
        orgName,
        jobTitle
      ]);
}

OnboardingFilesStruct createOnboardingFilesStruct({
  String? firstName,
  String? lastName,
  String? cellPhone,
  DocumentReference? collegeRef,
  String? typeOfCoach,
  String? orgName,
  String? jobTitle,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OnboardingFilesStruct(
      firstName: firstName,
      lastName: lastName,
      cellPhone: cellPhone,
      collegeRef: collegeRef,
      typeOfCoach: typeOfCoach,
      orgName: orgName,
      jobTitle: jobTitle,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OnboardingFilesStruct? updateOnboardingFilesStruct(
  OnboardingFilesStruct? onboardingFiles, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    onboardingFiles
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOnboardingFilesStructData(
  Map<String, dynamic> firestoreData,
  OnboardingFilesStruct? onboardingFiles,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (onboardingFiles == null) {
    return;
  }
  if (onboardingFiles.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && onboardingFiles.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final onboardingFilesData =
      getOnboardingFilesFirestoreData(onboardingFiles, forFieldValue);
  final nestedData =
      onboardingFilesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = onboardingFiles.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOnboardingFilesFirestoreData(
  OnboardingFilesStruct? onboardingFiles, [
  bool forFieldValue = false,
]) {
  if (onboardingFiles == null) {
    return {};
  }
  final firestoreData = mapToFirestore(onboardingFiles.toMap());

  // Add any Firestore field values
  onboardingFiles.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOnboardingFilesListFirestoreData(
  List<OnboardingFilesStruct>? onboardingFiless,
) =>
    onboardingFiless
        ?.map((e) => getOnboardingFilesFirestoreData(e, true))
        .toList() ??
    [];
