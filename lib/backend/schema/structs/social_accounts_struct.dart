// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SocialAccountsStruct extends FFFirebaseStruct {
  SocialAccountsStruct({
    String? twitterProfileURL,
    String? instagramProfileURL,
    String? youTubeChannelURL,
    String? sportsRecruitURL,
    String? virtualCombineURL,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _twitterProfileURL = twitterProfileURL,
        _instagramProfileURL = instagramProfileURL,
        _youTubeChannelURL = youTubeChannelURL,
        _sportsRecruitURL = sportsRecruitURL,
        _virtualCombineURL = virtualCombineURL,
        super(firestoreUtilData);

  // "TwitterProfileURL" field.
  String? _twitterProfileURL;
  String get twitterProfileURL => _twitterProfileURL ?? '';
  set twitterProfileURL(String? val) => _twitterProfileURL = val;

  bool hasTwitterProfileURL() => _twitterProfileURL != null;

  // "InstagramProfileURL" field.
  String? _instagramProfileURL;
  String get instagramProfileURL => _instagramProfileURL ?? '';
  set instagramProfileURL(String? val) => _instagramProfileURL = val;

  bool hasInstagramProfileURL() => _instagramProfileURL != null;

  // "YouTubeChannelURL" field.
  String? _youTubeChannelURL;
  String get youTubeChannelURL => _youTubeChannelURL ?? '';
  set youTubeChannelURL(String? val) => _youTubeChannelURL = val;

  bool hasYouTubeChannelURL() => _youTubeChannelURL != null;

  // "SportsRecruitURL" field.
  String? _sportsRecruitURL;
  String get sportsRecruitURL => _sportsRecruitURL ?? '';
  set sportsRecruitURL(String? val) => _sportsRecruitURL = val;

  bool hasSportsRecruitURL() => _sportsRecruitURL != null;

  // "VirtualCombineURL" field.
  String? _virtualCombineURL;
  String get virtualCombineURL => _virtualCombineURL ?? '';
  set virtualCombineURL(String? val) => _virtualCombineURL = val;

  bool hasVirtualCombineURL() => _virtualCombineURL != null;

  static SocialAccountsStruct fromMap(Map<String, dynamic> data) =>
      SocialAccountsStruct(
        twitterProfileURL: data['TwitterProfileURL'] as String?,
        instagramProfileURL: data['InstagramProfileURL'] as String?,
        youTubeChannelURL: data['YouTubeChannelURL'] as String?,
        sportsRecruitURL: data['SportsRecruitURL'] as String?,
        virtualCombineURL: data['VirtualCombineURL'] as String?,
      );

  static SocialAccountsStruct? maybeFromMap(dynamic data) => data is Map
      ? SocialAccountsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'TwitterProfileURL': _twitterProfileURL,
        'InstagramProfileURL': _instagramProfileURL,
        'YouTubeChannelURL': _youTubeChannelURL,
        'SportsRecruitURL': _sportsRecruitURL,
        'VirtualCombineURL': _virtualCombineURL,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'TwitterProfileURL': serializeParam(
          _twitterProfileURL,
          ParamType.String,
        ),
        'InstagramProfileURL': serializeParam(
          _instagramProfileURL,
          ParamType.String,
        ),
        'YouTubeChannelURL': serializeParam(
          _youTubeChannelURL,
          ParamType.String,
        ),
        'SportsRecruitURL': serializeParam(
          _sportsRecruitURL,
          ParamType.String,
        ),
        'VirtualCombineURL': serializeParam(
          _virtualCombineURL,
          ParamType.String,
        ),
      }.withoutNulls;

  static SocialAccountsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SocialAccountsStruct(
        twitterProfileURL: deserializeParam(
          data['TwitterProfileURL'],
          ParamType.String,
          false,
        ),
        instagramProfileURL: deserializeParam(
          data['InstagramProfileURL'],
          ParamType.String,
          false,
        ),
        youTubeChannelURL: deserializeParam(
          data['YouTubeChannelURL'],
          ParamType.String,
          false,
        ),
        sportsRecruitURL: deserializeParam(
          data['SportsRecruitURL'],
          ParamType.String,
          false,
        ),
        virtualCombineURL: deserializeParam(
          data['VirtualCombineURL'],
          ParamType.String,
          false,
        ),
      );

  static SocialAccountsStruct fromAlgoliaData(Map<String, dynamic> data) =>
      SocialAccountsStruct(
        twitterProfileURL: convertAlgoliaParam(
          data['TwitterProfileURL'],
          ParamType.String,
          false,
        ),
        instagramProfileURL: convertAlgoliaParam(
          data['InstagramProfileURL'],
          ParamType.String,
          false,
        ),
        youTubeChannelURL: convertAlgoliaParam(
          data['YouTubeChannelURL'],
          ParamType.String,
          false,
        ),
        sportsRecruitURL: convertAlgoliaParam(
          data['SportsRecruitURL'],
          ParamType.String,
          false,
        ),
        virtualCombineURL: convertAlgoliaParam(
          data['VirtualCombineURL'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'SocialAccountsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SocialAccountsStruct &&
        twitterProfileURL == other.twitterProfileURL &&
        instagramProfileURL == other.instagramProfileURL &&
        youTubeChannelURL == other.youTubeChannelURL &&
        sportsRecruitURL == other.sportsRecruitURL &&
        virtualCombineURL == other.virtualCombineURL;
  }

  @override
  int get hashCode => const ListEquality().hash([
        twitterProfileURL,
        instagramProfileURL,
        youTubeChannelURL,
        sportsRecruitURL,
        virtualCombineURL
      ]);
}

SocialAccountsStruct createSocialAccountsStruct({
  String? twitterProfileURL,
  String? instagramProfileURL,
  String? youTubeChannelURL,
  String? sportsRecruitURL,
  String? virtualCombineURL,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SocialAccountsStruct(
      twitterProfileURL: twitterProfileURL,
      instagramProfileURL: instagramProfileURL,
      youTubeChannelURL: youTubeChannelURL,
      sportsRecruitURL: sportsRecruitURL,
      virtualCombineURL: virtualCombineURL,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SocialAccountsStruct? updateSocialAccountsStruct(
  SocialAccountsStruct? socialAccounts, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    socialAccounts
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSocialAccountsStructData(
  Map<String, dynamic> firestoreData,
  SocialAccountsStruct? socialAccounts,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (socialAccounts == null) {
    return;
  }
  if (socialAccounts.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && socialAccounts.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final socialAccountsData =
      getSocialAccountsFirestoreData(socialAccounts, forFieldValue);
  final nestedData =
      socialAccountsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = socialAccounts.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSocialAccountsFirestoreData(
  SocialAccountsStruct? socialAccounts, [
  bool forFieldValue = false,
]) {
  if (socialAccounts == null) {
    return {};
  }
  final firestoreData = mapToFirestore(socialAccounts.toMap());

  // Add any Firestore field values
  socialAccounts.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSocialAccountsListFirestoreData(
  List<SocialAccountsStruct>? socialAccountss,
) =>
    socialAccountss
        ?.map((e) => getSocialAccountsFirestoreData(e, true))
        .toList() ??
    [];
