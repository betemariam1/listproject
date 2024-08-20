// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TwitterDataStruct extends FFFirebaseStruct {
  TwitterDataStruct({
    String? accessToken,
    String? refreshToken,
    String? name,
    String? screenName,
    String? thumbnailImage,
    String? authToken,
    String? authTokenSecret,
    String? status,
    String? id,
    DocumentReference? twitterUserRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _accessToken = accessToken,
        _refreshToken = refreshToken,
        _name = name,
        _screenName = screenName,
        _thumbnailImage = thumbnailImage,
        _authToken = authToken,
        _authTokenSecret = authTokenSecret,
        _status = status,
        _id = id,
        _twitterUserRef = twitterUserRef,
        super(firestoreUtilData);

  // "accessToken" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "refreshToken" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;

  bool hasRefreshToken() => _refreshToken != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "screenName" field.
  String? _screenName;
  String get screenName => _screenName ?? '';
  set screenName(String? val) => _screenName = val;

  bool hasScreenName() => _screenName != null;

  // "thumbnailImage" field.
  String? _thumbnailImage;
  String get thumbnailImage => _thumbnailImage ?? '';
  set thumbnailImage(String? val) => _thumbnailImage = val;

  bool hasThumbnailImage() => _thumbnailImage != null;

  // "authToken" field.
  String? _authToken;
  String get authToken => _authToken ?? '';
  set authToken(String? val) => _authToken = val;

  bool hasAuthToken() => _authToken != null;

  // "authTokenSecret" field.
  String? _authTokenSecret;
  String get authTokenSecret => _authTokenSecret ?? '';
  set authTokenSecret(String? val) => _authTokenSecret = val;

  bool hasAuthTokenSecret() => _authTokenSecret != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "twitterUserRef" field.
  DocumentReference? _twitterUserRef;
  DocumentReference? get twitterUserRef => _twitterUserRef;
  set twitterUserRef(DocumentReference? val) => _twitterUserRef = val;

  bool hasTwitterUserRef() => _twitterUserRef != null;

  static TwitterDataStruct fromMap(Map<String, dynamic> data) =>
      TwitterDataStruct(
        accessToken: data['accessToken'] as String?,
        refreshToken: data['refreshToken'] as String?,
        name: data['name'] as String?,
        screenName: data['screenName'] as String?,
        thumbnailImage: data['thumbnailImage'] as String?,
        authToken: data['authToken'] as String?,
        authTokenSecret: data['authTokenSecret'] as String?,
        status: data['status'] as String?,
        id: data['id'] as String?,
        twitterUserRef: data['twitterUserRef'] as DocumentReference?,
      );

  static TwitterDataStruct? maybeFromMap(dynamic data) => data is Map
      ? TwitterDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accessToken': _accessToken,
        'refreshToken': _refreshToken,
        'name': _name,
        'screenName': _screenName,
        'thumbnailImage': _thumbnailImage,
        'authToken': _authToken,
        'authTokenSecret': _authTokenSecret,
        'status': _status,
        'id': _id,
        'twitterUserRef': _twitterUserRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accessToken': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'refreshToken': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'screenName': serializeParam(
          _screenName,
          ParamType.String,
        ),
        'thumbnailImage': serializeParam(
          _thumbnailImage,
          ParamType.String,
        ),
        'authToken': serializeParam(
          _authToken,
          ParamType.String,
        ),
        'authTokenSecret': serializeParam(
          _authTokenSecret,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'twitterUserRef': serializeParam(
          _twitterUserRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static TwitterDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      TwitterDataStruct(
        accessToken: deserializeParam(
          data['accessToken'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['refreshToken'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        screenName: deserializeParam(
          data['screenName'],
          ParamType.String,
          false,
        ),
        thumbnailImage: deserializeParam(
          data['thumbnailImage'],
          ParamType.String,
          false,
        ),
        authToken: deserializeParam(
          data['authToken'],
          ParamType.String,
          false,
        ),
        authTokenSecret: deserializeParam(
          data['authTokenSecret'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        twitterUserRef: deserializeParam(
          data['twitterUserRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['twitterUsers'],
        ),
      );

  static TwitterDataStruct fromAlgoliaData(Map<String, dynamic> data) =>
      TwitterDataStruct(
        accessToken: convertAlgoliaParam(
          data['accessToken'],
          ParamType.String,
          false,
        ),
        refreshToken: convertAlgoliaParam(
          data['refreshToken'],
          ParamType.String,
          false,
        ),
        name: convertAlgoliaParam(
          data['name'],
          ParamType.String,
          false,
        ),
        screenName: convertAlgoliaParam(
          data['screenName'],
          ParamType.String,
          false,
        ),
        thumbnailImage: convertAlgoliaParam(
          data['thumbnailImage'],
          ParamType.String,
          false,
        ),
        authToken: convertAlgoliaParam(
          data['authToken'],
          ParamType.String,
          false,
        ),
        authTokenSecret: convertAlgoliaParam(
          data['authTokenSecret'],
          ParamType.String,
          false,
        ),
        status: convertAlgoliaParam(
          data['status'],
          ParamType.String,
          false,
        ),
        id: convertAlgoliaParam(
          data['id'],
          ParamType.String,
          false,
        ),
        twitterUserRef: convertAlgoliaParam(
          data['twitterUserRef'],
          ParamType.DocumentReference,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'TwitterDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TwitterDataStruct &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        name == other.name &&
        screenName == other.screenName &&
        thumbnailImage == other.thumbnailImage &&
        authToken == other.authToken &&
        authTokenSecret == other.authTokenSecret &&
        status == other.status &&
        id == other.id &&
        twitterUserRef == other.twitterUserRef;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accessToken,
        refreshToken,
        name,
        screenName,
        thumbnailImage,
        authToken,
        authTokenSecret,
        status,
        id,
        twitterUserRef
      ]);
}

TwitterDataStruct createTwitterDataStruct({
  String? accessToken,
  String? refreshToken,
  String? name,
  String? screenName,
  String? thumbnailImage,
  String? authToken,
  String? authTokenSecret,
  String? status,
  String? id,
  DocumentReference? twitterUserRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TwitterDataStruct(
      accessToken: accessToken,
      refreshToken: refreshToken,
      name: name,
      screenName: screenName,
      thumbnailImage: thumbnailImage,
      authToken: authToken,
      authTokenSecret: authTokenSecret,
      status: status,
      id: id,
      twitterUserRef: twitterUserRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TwitterDataStruct? updateTwitterDataStruct(
  TwitterDataStruct? twitterData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    twitterData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTwitterDataStructData(
  Map<String, dynamic> firestoreData,
  TwitterDataStruct? twitterData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (twitterData == null) {
    return;
  }
  if (twitterData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && twitterData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final twitterDataData =
      getTwitterDataFirestoreData(twitterData, forFieldValue);
  final nestedData =
      twitterDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = twitterData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTwitterDataFirestoreData(
  TwitterDataStruct? twitterData, [
  bool forFieldValue = false,
]) {
  if (twitterData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(twitterData.toMap());

  // Add any Firestore field values
  twitterData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTwitterDataListFirestoreData(
  List<TwitterDataStruct>? twitterDatas,
) =>
    twitterDatas?.map((e) => getTwitterDataFirestoreData(e, true)).toList() ??
    [];
