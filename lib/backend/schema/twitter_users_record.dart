import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TwitterUsersRecord extends FirestoreRecord {
  TwitterUsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "has_ab_account" field.
  bool? _hasAbAccount;
  bool get hasAbAccount => _hasAbAccount ?? false;
  bool hasHasAbAccount() => _hasAbAccount != null;

  // "has_gpa" field.
  bool? _hasGpa;
  bool get hasGpa => _hasGpa ?? false;
  bool hasHasGpa() => _hasGpa != null;

  // "has_location" field.
  bool? _hasLocation;
  bool get hasLocation => _hasLocation ?? false;
  bool hasHasLocation() => _hasLocation != null;

  // "has_year" field.
  bool? _hasYear;
  bool get hasYear => _hasYear ?? false;
  bool hasHasYear() => _hasYear != null;

  // "high_school" field.
  String? _highSchool;
  String get highSchool => _highSchool ?? '';
  bool hasHighSchool() => _highSchool != null;

  // "profile_image_url" field.
  String? _profileImageUrl;
  String get profileImageUrl => _profileImageUrl ?? '';
  bool hasProfileImageUrl() => _profileImageUrl != null;

  // "selfRef" field.
  String? _selfRef;
  String get selfRef => _selfRef ?? '';
  bool hasSelfRef() => _selfRef != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  bool hasYearField() => _year != null;

  // "dataQualityScore" field.
  double? _dataQualityScore;
  double get dataQualityScore => _dataQualityScore ?? 0.0;
  bool hasDataQualityScore() => _dataQualityScore != null;

  // "user_record" field.
  UserRecordStruct? _userRecord;
  UserRecordStruct get userRecord => _userRecord ?? UserRecordStruct();
  bool hasUserRecord() => _userRecord != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "bat" field.
  DataFieldStruct? _bat;
  DataFieldStruct get bat => _bat ?? DataFieldStruct();
  bool hasBat() => _bat != null;

  // "gpaData" field.
  DataField2Struct? _gpaData;
  DataField2Struct get gpaData => _gpaData ?? DataField2Struct();
  bool hasGpaData() => _gpaData != null;

  // "height" field.
  DataField2Struct? _height;
  DataField2Struct get height => _height ?? DataField2Struct();
  bool hasHeight() => _height != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "location" field.
  DataFieldStruct? _location;
  DataFieldStruct get location => _location ?? DataFieldStruct();
  bool hasLocationField() => _location != null;

  // "nameData" field.
  DataFieldStruct? _nameData;
  DataFieldStruct get nameData => _nameData ?? DataFieldStruct();
  bool hasNameData() => _nameData != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "playerSelectedSport" field.
  String? _playerSelectedSport;
  String get playerSelectedSport => _playerSelectedSport ?? '';
  bool hasPlayerSelectedSport() => _playerSelectedSport != null;

  // "positions" field.
  DataFieldStruct? _positions;
  DataFieldStruct get positions => _positions ?? DataFieldStruct();
  bool hasPositions() => _positions != null;

  // "sport" field.
  DataFieldStruct? _sport;
  DataFieldStruct get sport => _sport ?? DataFieldStruct();
  bool hasSport() => _sport != null;

  // "throw1" field.
  DataFieldStruct? _throw1;
  DataFieldStruct get throw1 => _throw1 ?? DataFieldStruct();
  bool hasThrow1() => _throw1 != null;

  // "twitter_id" field.
  DataFieldStruct? _twitterId;
  DataFieldStruct get twitterId => _twitterId ?? DataFieldStruct();
  bool hasTwitterId() => _twitterId != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "usernameData" field.
  DataFieldStruct? _usernameData;
  DataFieldStruct get usernameData => _usernameData ?? DataFieldStruct();
  bool hasUsernameData() => _usernameData != null;

  // "isClaimed" field.
  bool? _isClaimed;
  bool get isClaimed => _isClaimed ?? false;
  bool hasIsClaimed() => _isClaimed != null;

  // "time60" field.
  DataField3Struct? _time60;
  DataField3Struct get time60 => _time60 ?? DataField3Struct();
  bool hasTime60() => _time60 != null;

  // "act" field.
  DataField3Struct? _act;
  DataField3Struct get act => _act ?? DataField3Struct();
  bool hasAct() => _act != null;

  // "cb_high" field.
  DataField3Struct? _cbHigh;
  DataField3Struct get cbHigh => _cbHigh ?? DataField3Struct();
  bool hasCbHigh() => _cbHigh != null;

  // "cb_low" field.
  DataField3Struct? _cbLow;
  DataField3Struct get cbLow => _cbLow ?? DataField3Struct();
  bool hasCbLow() => _cbLow != null;

  // "ch_high" field.
  DataField3Struct? _chHigh;
  DataField3Struct get chHigh => _chHigh ?? DataField3Struct();
  bool hasChHigh() => _chHigh != null;

  // "ch_low" field.
  DataField3Struct? _chLow;
  DataField3Struct get chLow => _chLow ?? DataField3Struct();
  bool hasChLow() => _chLow != null;

  // "ev" field.
  DataField3Struct? _ev;
  DataField3Struct get ev => _ev ?? DataField3Struct();
  bool hasEv() => _ev != null;

  // "fb_high" field.
  DataField3Struct? _fbHigh;
  DataField3Struct get fbHigh => _fbHigh ?? DataField3Struct();
  bool hasFbHigh() => _fbHigh != null;

  // "fb_low" field.
  DataField3Struct? _fbLow;
  DataField3Struct get fbLow => _fbLow ?? DataField3Struct();
  bool hasFbLow() => _fbLow != null;

  // "sat" field.
  DataField3Struct? _sat;
  DataField3Struct get sat => _sat ?? DataField3Struct();
  bool hasSat() => _sat != null;

  // "sl_high" field.
  DataField3Struct? _slHigh;
  DataField3Struct get slHigh => _slHigh ?? DataField3Struct();
  bool hasSlHigh() => _slHigh != null;

  // "sl_low" field.
  DataField3Struct? _slLow;
  DataField3Struct get slLow => _slLow ?? DataField3Struct();
  bool hasSlLow() => _slLow != null;

  // "weight" field.
  DataField2Struct? _weight;
  DataField2Struct get weight => _weight ?? DataField2Struct();
  bool hasWeight() => _weight != null;

  // "top_fb" field.
  DataField3Struct? _topFb;
  DataField3Struct get topFb => _topFb ?? DataField3Struct();
  bool hasTopFb() => _topFb != null;

  // "video_link" field.
  DataFieldStruct? _videoLink;
  DataFieldStruct get videoLink => _videoLink ?? DataFieldStruct();
  bool hasVideoLink() => _videoLink != null;

  // "video_count" field.
  DataField3Struct? _videoCount;
  DataField3Struct get videoCount => _videoCount ?? DataField3Struct();
  bool hasVideoCount() => _videoCount != null;

  // "ofv" field.
  DataField3Struct? _ofv;
  DataField3Struct get ofv => _ofv ?? DataField3Struct();
  bool hasOfv() => _ofv != null;

  // "poptime" field.
  DataField2Struct? _poptime;
  DataField2Struct get poptime => _poptime ?? DataField2Struct();
  bool hasPoptime() => _poptime != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "first_name" field.
  DataFieldStruct? _firstName;
  DataFieldStruct get firstName => _firstName ?? DataFieldStruct();
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  DataFieldStruct? _lastName;
  DataFieldStruct get lastName => _lastName ?? DataFieldStruct();
  bool hasLastName() => _lastName != null;

  // "primary_position" field.
  DataFieldStruct? _primaryPosition;
  DataFieldStruct get primaryPosition => _primaryPosition ?? DataFieldStruct();
  bool hasPrimaryPosition() => _primaryPosition != null;

  // "secondary_position" field.
  DataFieldStruct? _secondaryPosition;
  DataFieldStruct get secondaryPosition =>
      _secondaryPosition ?? DataFieldStruct();
  bool hasSecondaryPosition() => _secondaryPosition != null;

  // "height_feet" field.
  DataField2Struct? _heightFeet;
  DataField2Struct get heightFeet => _heightFeet ?? DataField2Struct();
  bool hasHeightFeet() => _heightFeet != null;

  // "height_inches" field.
  DataField2Struct? _heightInches;
  DataField2Struct get heightInches => _heightInches ?? DataField2Struct();
  bool hasHeightInches() => _heightInches != null;

  // "yearData" field.
  DataField3Struct? _yearData;
  DataField3Struct get yearData => _yearData ?? DataField3Struct();
  bool hasYearData() => _yearData != null;

  // "updateCount" field.
  int? _updateCount;
  int get updateCount => _updateCount ?? 0;
  bool hasUpdateCount() => _updateCount != null;

  // "favColleges" field.
  List<DocumentReference>? _favColleges;
  List<DocumentReference> get favColleges => _favColleges ?? const [];
  bool hasFavColleges() => _favColleges != null;

  void _initializeFields() {
    _city = snapshotData['city'] as String?;
    _description = snapshotData['description'] as String?;
    _hasAbAccount = snapshotData['has_ab_account'] as bool?;
    _hasGpa = snapshotData['has_gpa'] as bool?;
    _hasLocation = snapshotData['has_location'] as bool?;
    _hasYear = snapshotData['has_year'] as bool?;
    _highSchool = snapshotData['high_school'] as String?;
    _profileImageUrl = snapshotData['profile_image_url'] as String?;
    _selfRef = snapshotData['selfRef'] as String?;
    _state = snapshotData['state'] as String?;
    _uid = snapshotData['uid'] as String?;
    _year = snapshotData['year'] as String?;
    _dataQualityScore = castToType<double>(snapshotData['dataQualityScore']);
    _userRecord = UserRecordStruct.maybeFromMap(snapshotData['user_record']);
    _active = snapshotData['active'] as bool?;
    _email = snapshotData['email'] as String?;
    _bat = DataFieldStruct.maybeFromMap(snapshotData['bat']);
    _gpaData = DataField2Struct.maybeFromMap(snapshotData['gpaData']);
    _height = DataField2Struct.maybeFromMap(snapshotData['height']);
    _id = snapshotData['id'] as String?;
    _location = DataFieldStruct.maybeFromMap(snapshotData['location']);
    _nameData = DataFieldStruct.maybeFromMap(snapshotData['nameData']);
    _phone = snapshotData['phone'] as String?;
    _playerSelectedSport = snapshotData['playerSelectedSport'] as String?;
    _positions = DataFieldStruct.maybeFromMap(snapshotData['positions']);
    _sport = DataFieldStruct.maybeFromMap(snapshotData['sport']);
    _throw1 = DataFieldStruct.maybeFromMap(snapshotData['throw1']);
    _twitterId = DataFieldStruct.maybeFromMap(snapshotData['twitter_id']);
    _username = snapshotData['username'] as String?;
    _usernameData = DataFieldStruct.maybeFromMap(snapshotData['usernameData']);
    _isClaimed = snapshotData['isClaimed'] as bool?;
    _time60 = DataField3Struct.maybeFromMap(snapshotData['time60']);
    _act = DataField3Struct.maybeFromMap(snapshotData['act']);
    _cbHigh = DataField3Struct.maybeFromMap(snapshotData['cb_high']);
    _cbLow = DataField3Struct.maybeFromMap(snapshotData['cb_low']);
    _chHigh = DataField3Struct.maybeFromMap(snapshotData['ch_high']);
    _chLow = DataField3Struct.maybeFromMap(snapshotData['ch_low']);
    _ev = DataField3Struct.maybeFromMap(snapshotData['ev']);
    _fbHigh = DataField3Struct.maybeFromMap(snapshotData['fb_high']);
    _fbLow = DataField3Struct.maybeFromMap(snapshotData['fb_low']);
    _sat = DataField3Struct.maybeFromMap(snapshotData['sat']);
    _slHigh = DataField3Struct.maybeFromMap(snapshotData['sl_high']);
    _slLow = DataField3Struct.maybeFromMap(snapshotData['sl_low']);
    _weight = DataField2Struct.maybeFromMap(snapshotData['weight']);
    _topFb = DataField3Struct.maybeFromMap(snapshotData['top_fb']);
    _videoLink = DataFieldStruct.maybeFromMap(snapshotData['video_link']);
    _videoCount = DataField3Struct.maybeFromMap(snapshotData['video_count']);
    _ofv = DataField3Struct.maybeFromMap(snapshotData['ofv']);
    _poptime = DataField2Struct.maybeFromMap(snapshotData['poptime']);
    _name = snapshotData['name'] as String?;
    _firstName = DataFieldStruct.maybeFromMap(snapshotData['first_name']);
    _lastName = DataFieldStruct.maybeFromMap(snapshotData['last_name']);
    _primaryPosition =
        DataFieldStruct.maybeFromMap(snapshotData['primary_position']);
    _secondaryPosition =
        DataFieldStruct.maybeFromMap(snapshotData['secondary_position']);
    _heightFeet = DataField2Struct.maybeFromMap(snapshotData['height_feet']);
    _heightInches =
        DataField2Struct.maybeFromMap(snapshotData['height_inches']);
    _yearData = DataField3Struct.maybeFromMap(snapshotData['yearData']);
    _updateCount = castToType<int>(snapshotData['updateCount']);
    _favColleges = getDataList(snapshotData['favColleges']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('twitterUsers');

  static Stream<TwitterUsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TwitterUsersRecord.fromSnapshot(s));

  static Future<TwitterUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TwitterUsersRecord.fromSnapshot(s));

  static TwitterUsersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TwitterUsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TwitterUsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TwitterUsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TwitterUsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TwitterUsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTwitterUsersRecordData({
  String? city,
  String? description,
  bool? hasAbAccount,
  bool? hasGpa,
  bool? hasLocation,
  bool? hasYear,
  String? highSchool,
  String? profileImageUrl,
  String? selfRef,
  String? state,
  String? uid,
  String? year,
  double? dataQualityScore,
  UserRecordStruct? userRecord,
  bool? active,
  String? email,
  DataFieldStruct? bat,
  DataField2Struct? gpaData,
  DataField2Struct? height,
  String? id,
  DataFieldStruct? location,
  DataFieldStruct? nameData,
  String? phone,
  String? playerSelectedSport,
  DataFieldStruct? positions,
  DataFieldStruct? sport,
  DataFieldStruct? throw1,
  DataFieldStruct? twitterId,
  String? username,
  DataFieldStruct? usernameData,
  bool? isClaimed,
  DataField3Struct? time60,
  DataField3Struct? act,
  DataField3Struct? cbHigh,
  DataField3Struct? cbLow,
  DataField3Struct? chHigh,
  DataField3Struct? chLow,
  DataField3Struct? ev,
  DataField3Struct? fbHigh,
  DataField3Struct? fbLow,
  DataField3Struct? sat,
  DataField3Struct? slHigh,
  DataField3Struct? slLow,
  DataField2Struct? weight,
  DataField3Struct? topFb,
  DataFieldStruct? videoLink,
  DataField3Struct? videoCount,
  DataField3Struct? ofv,
  DataField2Struct? poptime,
  String? name,
  DataFieldStruct? firstName,
  DataFieldStruct? lastName,
  DataFieldStruct? primaryPosition,
  DataFieldStruct? secondaryPosition,
  DataField2Struct? heightFeet,
  DataField2Struct? heightInches,
  DataField3Struct? yearData,
  int? updateCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'city': city,
      'description': description,
      'has_ab_account': hasAbAccount,
      'has_gpa': hasGpa,
      'has_location': hasLocation,
      'has_year': hasYear,
      'high_school': highSchool,
      'profile_image_url': profileImageUrl,
      'selfRef': selfRef,
      'state': state,
      'uid': uid,
      'year': year,
      'dataQualityScore': dataQualityScore,
      'user_record': UserRecordStruct().toMap(),
      'active': active,
      'email': email,
      'bat': DataFieldStruct().toMap(),
      'gpaData': DataField2Struct().toMap(),
      'height': DataField2Struct().toMap(),
      'id': id,
      'location': DataFieldStruct().toMap(),
      'nameData': DataFieldStruct().toMap(),
      'phone': phone,
      'playerSelectedSport': playerSelectedSport,
      'positions': DataFieldStruct().toMap(),
      'sport': DataFieldStruct().toMap(),
      'throw1': DataFieldStruct().toMap(),
      'twitter_id': DataFieldStruct().toMap(),
      'username': username,
      'usernameData': DataFieldStruct().toMap(),
      'isClaimed': isClaimed,
      'time60': DataField3Struct().toMap(),
      'act': DataField3Struct().toMap(),
      'cb_high': DataField3Struct().toMap(),
      'cb_low': DataField3Struct().toMap(),
      'ch_high': DataField3Struct().toMap(),
      'ch_low': DataField3Struct().toMap(),
      'ev': DataField3Struct().toMap(),
      'fb_high': DataField3Struct().toMap(),
      'fb_low': DataField3Struct().toMap(),
      'sat': DataField3Struct().toMap(),
      'sl_high': DataField3Struct().toMap(),
      'sl_low': DataField3Struct().toMap(),
      'weight': DataField2Struct().toMap(),
      'top_fb': DataField3Struct().toMap(),
      'video_link': DataFieldStruct().toMap(),
      'video_count': DataField3Struct().toMap(),
      'ofv': DataField3Struct().toMap(),
      'poptime': DataField2Struct().toMap(),
      'name': name,
      'first_name': DataFieldStruct().toMap(),
      'last_name': DataFieldStruct().toMap(),
      'primary_position': DataFieldStruct().toMap(),
      'secondary_position': DataFieldStruct().toMap(),
      'height_feet': DataField2Struct().toMap(),
      'height_inches': DataField2Struct().toMap(),
      'yearData': DataField3Struct().toMap(),
      'updateCount': updateCount,
    }.withoutNulls,
  );

  // Handle nested data for "user_record" field.
  addUserRecordStructData(firestoreData, userRecord, 'user_record');

  // Handle nested data for "bat" field.
  addDataFieldStructData(firestoreData, bat, 'bat');

  // Handle nested data for "gpaData" field.
  addDataField2StructData(firestoreData, gpaData, 'gpaData');

  // Handle nested data for "height" field.
  addDataField2StructData(firestoreData, height, 'height');

  // Handle nested data for "location" field.
  addDataFieldStructData(firestoreData, location, 'location');

  // Handle nested data for "nameData" field.
  addDataFieldStructData(firestoreData, nameData, 'nameData');

  // Handle nested data for "positions" field.
  addDataFieldStructData(firestoreData, positions, 'positions');

  // Handle nested data for "sport" field.
  addDataFieldStructData(firestoreData, sport, 'sport');

  // Handle nested data for "throw1" field.
  addDataFieldStructData(firestoreData, throw1, 'throw1');

  // Handle nested data for "twitter_id" field.
  addDataFieldStructData(firestoreData, twitterId, 'twitter_id');

  // Handle nested data for "usernameData" field.
  addDataFieldStructData(firestoreData, usernameData, 'usernameData');

  // Handle nested data for "time60" field.
  addDataField3StructData(firestoreData, time60, 'time60');

  // Handle nested data for "act" field.
  addDataField3StructData(firestoreData, act, 'act');

  // Handle nested data for "cb_high" field.
  addDataField3StructData(firestoreData, cbHigh, 'cb_high');

  // Handle nested data for "cb_low" field.
  addDataField3StructData(firestoreData, cbLow, 'cb_low');

  // Handle nested data for "ch_high" field.
  addDataField3StructData(firestoreData, chHigh, 'ch_high');

  // Handle nested data for "ch_low" field.
  addDataField3StructData(firestoreData, chLow, 'ch_low');

  // Handle nested data for "ev" field.
  addDataField3StructData(firestoreData, ev, 'ev');

  // Handle nested data for "fb_high" field.
  addDataField3StructData(firestoreData, fbHigh, 'fb_high');

  // Handle nested data for "fb_low" field.
  addDataField3StructData(firestoreData, fbLow, 'fb_low');

  // Handle nested data for "sat" field.
  addDataField3StructData(firestoreData, sat, 'sat');

  // Handle nested data for "sl_high" field.
  addDataField3StructData(firestoreData, slHigh, 'sl_high');

  // Handle nested data for "sl_low" field.
  addDataField3StructData(firestoreData, slLow, 'sl_low');

  // Handle nested data for "weight" field.
  addDataField2StructData(firestoreData, weight, 'weight');

  // Handle nested data for "top_fb" field.
  addDataField3StructData(firestoreData, topFb, 'top_fb');

  // Handle nested data for "video_link" field.
  addDataFieldStructData(firestoreData, videoLink, 'video_link');

  // Handle nested data for "video_count" field.
  addDataField3StructData(firestoreData, videoCount, 'video_count');

  // Handle nested data for "ofv" field.
  addDataField3StructData(firestoreData, ofv, 'ofv');

  // Handle nested data for "poptime" field.
  addDataField2StructData(firestoreData, poptime, 'poptime');

  // Handle nested data for "first_name" field.
  addDataFieldStructData(firestoreData, firstName, 'first_name');

  // Handle nested data for "last_name" field.
  addDataFieldStructData(firestoreData, lastName, 'last_name');

  // Handle nested data for "primary_position" field.
  addDataFieldStructData(firestoreData, primaryPosition, 'primary_position');

  // Handle nested data for "secondary_position" field.
  addDataFieldStructData(
      firestoreData, secondaryPosition, 'secondary_position');

  // Handle nested data for "height_feet" field.
  addDataField2StructData(firestoreData, heightFeet, 'height_feet');

  // Handle nested data for "height_inches" field.
  addDataField2StructData(firestoreData, heightInches, 'height_inches');

  // Handle nested data for "yearData" field.
  addDataField3StructData(firestoreData, yearData, 'yearData');

  return firestoreData;
}

class TwitterUsersRecordDocumentEquality
    implements Equality<TwitterUsersRecord> {
  const TwitterUsersRecordDocumentEquality();

  @override
  bool equals(TwitterUsersRecord? e1, TwitterUsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.city == e2?.city &&
        e1?.description == e2?.description &&
        e1?.hasAbAccount == e2?.hasAbAccount &&
        e1?.hasGpa == e2?.hasGpa &&
        e1?.hasLocation == e2?.hasLocation &&
        e1?.hasYear == e2?.hasYear &&
        e1?.highSchool == e2?.highSchool &&
        e1?.profileImageUrl == e2?.profileImageUrl &&
        e1?.selfRef == e2?.selfRef &&
        e1?.state == e2?.state &&
        e1?.uid == e2?.uid &&
        e1?.year == e2?.year &&
        e1?.dataQualityScore == e2?.dataQualityScore &&
        e1?.userRecord == e2?.userRecord &&
        e1?.active == e2?.active &&
        e1?.email == e2?.email &&
        e1?.bat == e2?.bat &&
        e1?.gpaData == e2?.gpaData &&
        e1?.height == e2?.height &&
        e1?.id == e2?.id &&
        e1?.location == e2?.location &&
        e1?.nameData == e2?.nameData &&
        e1?.phone == e2?.phone &&
        e1?.playerSelectedSport == e2?.playerSelectedSport &&
        e1?.positions == e2?.positions &&
        e1?.sport == e2?.sport &&
        e1?.throw1 == e2?.throw1 &&
        e1?.twitterId == e2?.twitterId &&
        e1?.username == e2?.username &&
        e1?.usernameData == e2?.usernameData &&
        e1?.isClaimed == e2?.isClaimed &&
        e1?.time60 == e2?.time60 &&
        e1?.act == e2?.act &&
        e1?.cbHigh == e2?.cbHigh &&
        e1?.cbLow == e2?.cbLow &&
        e1?.chHigh == e2?.chHigh &&
        e1?.chLow == e2?.chLow &&
        e1?.ev == e2?.ev &&
        e1?.fbHigh == e2?.fbHigh &&
        e1?.fbLow == e2?.fbLow &&
        e1?.sat == e2?.sat &&
        e1?.slHigh == e2?.slHigh &&
        e1?.slLow == e2?.slLow &&
        e1?.weight == e2?.weight &&
        e1?.topFb == e2?.topFb &&
        e1?.videoLink == e2?.videoLink &&
        e1?.videoCount == e2?.videoCount &&
        e1?.ofv == e2?.ofv &&
        e1?.poptime == e2?.poptime &&
        e1?.name == e2?.name &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.primaryPosition == e2?.primaryPosition &&
        e1?.secondaryPosition == e2?.secondaryPosition &&
        e1?.heightFeet == e2?.heightFeet &&
        e1?.heightInches == e2?.heightInches &&
        e1?.yearData == e2?.yearData &&
        e1?.updateCount == e2?.updateCount &&
        listEquality.equals(e1?.favColleges, e2?.favColleges);
  }

  @override
  int hash(TwitterUsersRecord? e) => const ListEquality().hash([
        e?.city,
        e?.description,
        e?.hasAbAccount,
        e?.hasGpa,
        e?.hasLocation,
        e?.hasYear,
        e?.highSchool,
        e?.profileImageUrl,
        e?.selfRef,
        e?.state,
        e?.uid,
        e?.year,
        e?.dataQualityScore,
        e?.userRecord,
        e?.active,
        e?.email,
        e?.bat,
        e?.gpaData,
        e?.height,
        e?.id,
        e?.location,
        e?.nameData,
        e?.phone,
        e?.playerSelectedSport,
        e?.positions,
        e?.sport,
        e?.throw1,
        e?.twitterId,
        e?.username,
        e?.usernameData,
        e?.isClaimed,
        e?.time60,
        e?.act,
        e?.cbHigh,
        e?.cbLow,
        e?.chHigh,
        e?.chLow,
        e?.ev,
        e?.fbHigh,
        e?.fbLow,
        e?.sat,
        e?.slHigh,
        e?.slLow,
        e?.weight,
        e?.topFb,
        e?.videoLink,
        e?.videoCount,
        e?.ofv,
        e?.poptime,
        e?.name,
        e?.firstName,
        e?.lastName,
        e?.primaryPosition,
        e?.secondaryPosition,
        e?.heightFeet,
        e?.heightInches,
        e?.yearData,
        e?.updateCount,
        e?.favColleges
      ]);

  @override
  bool isValidKey(Object? o) => o is TwitterUsersRecord;
}
