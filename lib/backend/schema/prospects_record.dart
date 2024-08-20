import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProspectsRecord extends FirestoreRecord {
  ProspectsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "login_count" field.
  int? _loginCount;
  int get loginCount => _loginCount ?? 0;
  bool hasLoginCount() => _loginCount != null;

  // "pwd" field.
  String? _pwd;
  String get pwd => _pwd ?? '';
  bool hasPwd() => _pwd != null;

  // "twitter_connected" field.
  bool? _twitterConnected;
  bool get twitterConnected => _twitterConnected ?? false;
  bool hasTwitterConnected() => _twitterConnected != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "userrole" field.
  String? _userrole;
  String get userrole => _userrole ?? '';
  bool hasUserrole() => _userrole != null;

  // "threadslist" field.
  List<DocumentReference>? _threadslist;
  List<DocumentReference> get threadslist => _threadslist ?? const [];
  bool hasThreadslist() => _threadslist != null;

  // "fav_colleges" field.
  List<DocumentReference>? _favColleges;
  List<DocumentReference> get favColleges => _favColleges ?? const [];
  bool hasFavColleges() => _favColleges != null;

  // "college_ref" field.
  DocumentReference? _collegeRef;
  DocumentReference? get collegeRef => _collegeRef;
  bool hasCollegeRef() => _collegeRef != null;

  // "fav_players" field.
  List<DocumentReference>? _favPlayers;
  List<DocumentReference> get favPlayers => _favPlayers ?? const [];
  bool hasFavPlayers() => _favPlayers != null;

  // "isPremium" field.
  bool? _isPremium;
  bool get isPremium => _isPremium ?? false;
  bool hasIsPremium() => _isPremium != null;

  // "isApproved" field.
  bool? _isApproved;
  bool get isApproved => _isApproved ?? false;
  bool hasIsApproved() => _isApproved != null;

  // "blockedUsersList" field.
  List<DocumentReference>? _blockedUsersList;
  List<DocumentReference> get blockedUsersList => _blockedUsersList ?? const [];
  bool hasBlockedUsersList() => _blockedUsersList != null;

  // "twitterData" field.
  TwitterDataStruct? _twitterData;
  TwitterDataStruct get twitterData => _twitterData ?? TwitterDataStruct();
  bool hasTwitterData() => _twitterData != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "createdByRef" field.
  DocumentReference? _createdByRef;
  DocumentReference? get createdByRef => _createdByRef;
  bool hasCreatedByRef() => _createdByRef != null;

  // "highSchoolTranscript" field.
  String? _highSchoolTranscript;
  String get highSchoolTranscript => _highSchoolTranscript ?? '';
  bool hasHighSchoolTranscript() => _highSchoolTranscript != null;

  // "schoolProfile" field.
  String? _schoolProfile;
  String get schoolProfile => _schoolProfile ?? '';
  bool hasSchoolProfile() => _schoolProfile != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "onboardingDetailsCompeleted" field.
  bool? _onboardingDetailsCompeleted;
  bool get onboardingDetailsCompeleted => _onboardingDetailsCompeleted ?? false;
  bool hasOnboardingDetailsCompeleted() => _onboardingDetailsCompeleted != null;

  // "last_notification_read" field.
  DateTime? _lastNotificationRead;
  DateTime? get lastNotificationRead => _lastNotificationRead;
  bool hasLastNotificationRead() => _lastNotificationRead != null;

  // "coachProspectList" field.
  List<DocumentReference>? _coachProspectList;
  List<DocumentReference> get coachProspectList =>
      _coachProspectList ?? const [];
  bool hasCoachProspectList() => _coachProspectList != null;

  // "onboardingDetails" field.
  OnboardingFilesStruct? _onboardingDetails;
  OnboardingFilesStruct get onboardingDetails =>
      _onboardingDetails ?? OnboardingFilesStruct();
  bool hasOnboardingDetails() => _onboardingDetails != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "selfReportedBattingEV" field.
  String? _selfReportedBattingEV;
  String get selfReportedBattingEV => _selfReportedBattingEV ?? '';
  bool hasSelfReportedBattingEV() => _selfReportedBattingEV != null;

  // "certifiedBattingEV" field.
  String? _certifiedBattingEV;
  String get certifiedBattingEV => _certifiedBattingEV ?? '';
  bool hasCertifiedBattingEV() => _certifiedBattingEV != null;

  // "selfReportedCBVeloAverage" field.
  String? _selfReportedCBVeloAverage;
  String get selfReportedCBVeloAverage => _selfReportedCBVeloAverage ?? '';
  bool hasSelfReportedCBVeloAverage() => _selfReportedCBVeloAverage != null;

  // "certifiedCBVeloAverage" field.
  String? _certifiedCBVeloAverage;
  String get certifiedCBVeloAverage => _certifiedCBVeloAverage ?? '';
  bool hasCertifiedCBVeloAverage() => _certifiedCBVeloAverage != null;

  // "selfReportedCBVeloHigh" field.
  String? _selfReportedCBVeloHigh;
  String get selfReportedCBVeloHigh => _selfReportedCBVeloHigh ?? '';
  bool hasSelfReportedCBVeloHigh() => _selfReportedCBVeloHigh != null;

  // "certifiedCBVeloHigh" field.
  String? _certifiedCBVeloHigh;
  String get certifiedCBVeloHigh => _certifiedCBVeloHigh ?? '';
  bool hasCertifiedCBVeloHigh() => _certifiedCBVeloHigh != null;

  // "selfReportedCHVeloAverage" field.
  String? _selfReportedCHVeloAverage;
  String get selfReportedCHVeloAverage => _selfReportedCHVeloAverage ?? '';
  bool hasSelfReportedCHVeloAverage() => _selfReportedCHVeloAverage != null;

  // "certifiedCHVeloAverage" field.
  String? _certifiedCHVeloAverage;
  String get certifiedCHVeloAverage => _certifiedCHVeloAverage ?? '';
  bool hasCertifiedCHVeloAverage() => _certifiedCHVeloAverage != null;

  // "selfReportedCHVeloHigh" field.
  String? _selfReportedCHVeloHigh;
  String get selfReportedCHVeloHigh => _selfReportedCHVeloHigh ?? '';
  bool hasSelfReportedCHVeloHigh() => _selfReportedCHVeloHigh != null;

  // "certifiedCHVeloHigh" field.
  String? _certifiedCHVeloHigh;
  String get certifiedCHVeloHigh => _certifiedCHVeloHigh ?? '';
  bool hasCertifiedCHVeloHigh() => _certifiedCHVeloHigh != null;

  // "selfReportedSLVeloAverage" field.
  String? _selfReportedSLVeloAverage;
  String get selfReportedSLVeloAverage => _selfReportedSLVeloAverage ?? '';
  bool hasSelfReportedSLVeloAverage() => _selfReportedSLVeloAverage != null;

  // "certifiedSLVeloAverage" field.
  String? _certifiedSLVeloAverage;
  String get certifiedSLVeloAverage => _certifiedSLVeloAverage ?? '';
  bool hasCertifiedSLVeloAverage() => _certifiedSLVeloAverage != null;

  // "selfReportedSLVeloHigh" field.
  String? _selfReportedSLVeloHigh;
  String get selfReportedSLVeloHigh => _selfReportedSLVeloHigh ?? '';
  bool hasSelfReportedSLVeloHigh() => _selfReportedSLVeloHigh != null;

  // "certifiedSLVeloHigh" field.
  String? _certifiedSLVeloHigh;
  String get certifiedSLVeloHigh => _certifiedSLVeloHigh ?? '';
  bool hasCertifiedSLVeloHigh() => _certifiedSLVeloHigh != null;

  // "selfReportedFB2SVeloAverage" field.
  String? _selfReportedFB2SVeloAverage;
  String get selfReportedFB2SVeloAverage => _selfReportedFB2SVeloAverage ?? '';
  bool hasSelfReportedFB2SVeloAverage() => _selfReportedFB2SVeloAverage != null;

  // "certifiedFB2SVeloAverage" field.
  String? _certifiedFB2SVeloAverage;
  String get certifiedFB2SVeloAverage => _certifiedFB2SVeloAverage ?? '';
  bool hasCertifiedFB2SVeloAverage() => _certifiedFB2SVeloAverage != null;

  // "selfReportedFB2SVeloHigh" field.
  String? _selfReportedFB2SVeloHigh;
  String get selfReportedFB2SVeloHigh => _selfReportedFB2SVeloHigh ?? '';
  bool hasSelfReportedFB2SVeloHigh() => _selfReportedFB2SVeloHigh != null;

  // "certifiedFB2SVeloHigh" field.
  String? _certifiedFB2SVeloHigh;
  String get certifiedFB2SVeloHigh => _certifiedFB2SVeloHigh ?? '';
  bool hasCertifiedFB2SVeloHigh() => _certifiedFB2SVeloHigh != null;

  // "selfReportedFB4SVeloHigh" field.
  String? _selfReportedFB4SVeloHigh;
  String get selfReportedFB4SVeloHigh => _selfReportedFB4SVeloHigh ?? '';
  bool hasSelfReportedFB4SVeloHigh() => _selfReportedFB4SVeloHigh != null;

  // "certifiedFB4SVeloHigh" field.
  String? _certifiedFB4SVeloHigh;
  String get certifiedFB4SVeloHigh => _certifiedFB4SVeloHigh ?? '';
  bool hasCertifiedFB4SVeloHigh() => _certifiedFB4SVeloHigh != null;

  // "selfReportedFB4SVeloAverage" field.
  String? _selfReportedFB4SVeloAverage;
  String get selfReportedFB4SVeloAverage => _selfReportedFB4SVeloAverage ?? '';
  bool hasSelfReportedFB4SVeloAverage() => _selfReportedFB4SVeloAverage != null;

  // "certifiedFB4SVeloAverage" field.
  String? _certifiedFB4SVeloAverage;
  String get certifiedFB4SVeloAverage => _certifiedFB4SVeloAverage ?? '';
  bool hasCertifiedFB4SVeloAverage() => _certifiedFB4SVeloAverage != null;

  // "selfReportedTime60" field.
  String? _selfReportedTime60;
  String get selfReportedTime60 => _selfReportedTime60 ?? '';
  bool hasSelfReportedTime60() => _selfReportedTime60 != null;

  // "certifiedTime60" field.
  String? _certifiedTime60;
  String get certifiedTime60 => _certifiedTime60 ?? '';
  bool hasCertifiedTime60() => _certifiedTime60 != null;

  // "selfReportedProShuttleTime" field.
  String? _selfReportedProShuttleTime;
  String get selfReportedProShuttleTime => _selfReportedProShuttleTime ?? '';
  bool hasSelfReportedProShuttleTime() => _selfReportedProShuttleTime != null;

  // "certifiedProShuttleTime" field.
  String? _certifiedProShuttleTime;
  String get certifiedProShuttleTime => _certifiedProShuttleTime ?? '';
  bool hasCertifiedProShuttleTime() => _certifiedProShuttleTime != null;

  // "selfReportedGPA" field.
  String? _selfReportedGPA;
  String get selfReportedGPA => _selfReportedGPA ?? '';
  bool hasSelfReportedGPA() => _selfReportedGPA != null;

  // "certifiedGPA" field.
  String? _certifiedGPA;
  String get certifiedGPA => _certifiedGPA ?? '';
  bool hasCertifiedGPA() => _certifiedGPA != null;

  // "bat" field.
  String? _bat;
  String get bat => _bat ?? '';
  bool hasBat() => _bat != null;

  // "primaryPosition" field.
  String? _primaryPosition;
  String get primaryPosition => _primaryPosition ?? '';
  bool hasPrimaryPosition() => _primaryPosition != null;

  // "secondaryPosition" field.
  String? _secondaryPosition;
  String get secondaryPosition => _secondaryPosition ?? '';
  bool hasSecondaryPosition() => _secondaryPosition != null;

  // "secondaryPosition2" field.
  String? _secondaryPosition2;
  String get secondaryPosition2 => _secondaryPosition2 ?? '';
  bool hasSecondaryPosition2() => _secondaryPosition2 != null;

  // "throw1" field.
  String? _throw1;
  String get throw1 => _throw1 ?? '';
  bool hasThrow1() => _throw1 != null;

  // "heightInches" field.
  String? _heightInches;
  String get heightInches => _heightInches ?? '';
  bool hasHeightInches() => _heightInches != null;

  // "heightFeet" field.
  String? _heightFeet;
  String get heightFeet => _heightFeet ?? '';
  bool hasHeightFeet() => _heightFeet != null;

  // "weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  bool hasWeight() => _weight != null;

  // "highSchool" field.
  String? _highSchool;
  String get highSchool => _highSchool ?? '';
  bool hasHighSchool() => _highSchool != null;

  // "graduationYear" field.
  String? _graduationYear;
  String get graduationYear => _graduationYear ?? '';
  bool hasGraduationYear() => _graduationYear != null;

  // "playerRef" field.
  DocumentReference? _playerRef;
  DocumentReference? get playerRef => _playerRef;
  bool hasPlayerRef() => _playerRef != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "twitterUserDocument" field.
  DocumentReference? _twitterUserDocument;
  DocumentReference? get twitterUserDocument => _twitterUserDocument;
  bool hasTwitterUserDocument() => _twitterUserDocument != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _loginCount = castToType<int>(snapshotData['login_count']);
    _pwd = snapshotData['pwd'] as String?;
    _twitterConnected = snapshotData['twitter_connected'] as bool?;
    _bio = snapshotData['bio'] as String?;
    _username = snapshotData['username'] as String?;
    _userrole = snapshotData['userrole'] as String?;
    _threadslist = getDataList(snapshotData['threadslist']);
    _favColleges = getDataList(snapshotData['fav_colleges']);
    _collegeRef = snapshotData['college_ref'] as DocumentReference?;
    _favPlayers = getDataList(snapshotData['fav_players']);
    _isPremium = snapshotData['isPremium'] as bool?;
    _isApproved = snapshotData['isApproved'] as bool?;
    _blockedUsersList = getDataList(snapshotData['blockedUsersList']);
    _twitterData = TwitterDataStruct.maybeFromMap(snapshotData['twitterData']);
    _createdBy = snapshotData['createdBy'] as String?;
    _createdByRef = snapshotData['createdByRef'] as DocumentReference?;
    _highSchoolTranscript = snapshotData['highSchoolTranscript'] as String?;
    _schoolProfile = snapshotData['schoolProfile'] as String?;
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _onboardingDetailsCompeleted =
        snapshotData['onboardingDetailsCompeleted'] as bool?;
    _lastNotificationRead = snapshotData['last_notification_read'] as DateTime?;
    _coachProspectList = getDataList(snapshotData['coachProspectList']);
    _onboardingDetails =
        OnboardingFilesStruct.maybeFromMap(snapshotData['onboardingDetails']);
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _selfReportedBattingEV = snapshotData['selfReportedBattingEV'] as String?;
    _certifiedBattingEV = snapshotData['certifiedBattingEV'] as String?;
    _selfReportedCBVeloAverage =
        snapshotData['selfReportedCBVeloAverage'] as String?;
    _certifiedCBVeloAverage = snapshotData['certifiedCBVeloAverage'] as String?;
    _selfReportedCBVeloHigh = snapshotData['selfReportedCBVeloHigh'] as String?;
    _certifiedCBVeloHigh = snapshotData['certifiedCBVeloHigh'] as String?;
    _selfReportedCHVeloAverage =
        snapshotData['selfReportedCHVeloAverage'] as String?;
    _certifiedCHVeloAverage = snapshotData['certifiedCHVeloAverage'] as String?;
    _selfReportedCHVeloHigh = snapshotData['selfReportedCHVeloHigh'] as String?;
    _certifiedCHVeloHigh = snapshotData['certifiedCHVeloHigh'] as String?;
    _selfReportedSLVeloAverage =
        snapshotData['selfReportedSLVeloAverage'] as String?;
    _certifiedSLVeloAverage = snapshotData['certifiedSLVeloAverage'] as String?;
    _selfReportedSLVeloHigh = snapshotData['selfReportedSLVeloHigh'] as String?;
    _certifiedSLVeloHigh = snapshotData['certifiedSLVeloHigh'] as String?;
    _selfReportedFB2SVeloAverage =
        snapshotData['selfReportedFB2SVeloAverage'] as String?;
    _certifiedFB2SVeloAverage =
        snapshotData['certifiedFB2SVeloAverage'] as String?;
    _selfReportedFB2SVeloHigh =
        snapshotData['selfReportedFB2SVeloHigh'] as String?;
    _certifiedFB2SVeloHigh = snapshotData['certifiedFB2SVeloHigh'] as String?;
    _selfReportedFB4SVeloHigh =
        snapshotData['selfReportedFB4SVeloHigh'] as String?;
    _certifiedFB4SVeloHigh = snapshotData['certifiedFB4SVeloHigh'] as String?;
    _selfReportedFB4SVeloAverage =
        snapshotData['selfReportedFB4SVeloAverage'] as String?;
    _certifiedFB4SVeloAverage =
        snapshotData['certifiedFB4SVeloAverage'] as String?;
    _selfReportedTime60 = snapshotData['selfReportedTime60'] as String?;
    _certifiedTime60 = snapshotData['certifiedTime60'] as String?;
    _selfReportedProShuttleTime =
        snapshotData['selfReportedProShuttleTime'] as String?;
    _certifiedProShuttleTime =
        snapshotData['certifiedProShuttleTime'] as String?;
    _selfReportedGPA = snapshotData['selfReportedGPA'] as String?;
    _certifiedGPA = snapshotData['certifiedGPA'] as String?;
    _bat = snapshotData['bat'] as String?;
    _primaryPosition = snapshotData['primaryPosition'] as String?;
    _secondaryPosition = snapshotData['secondaryPosition'] as String?;
    _secondaryPosition2 = snapshotData['secondaryPosition2'] as String?;
    _throw1 = snapshotData['throw1'] as String?;
    _heightInches = snapshotData['heightInches'] as String?;
    _heightFeet = snapshotData['heightFeet'] as String?;
    _weight = snapshotData['weight'] as String?;
    _highSchool = snapshotData['highSchool'] as String?;
    _graduationYear = snapshotData['graduationYear'] as String?;
    _playerRef = snapshotData['playerRef'] as DocumentReference?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _twitterUserDocument =
        snapshotData['twitterUserDocument'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Prospects')
          : FirebaseFirestore.instance.collectionGroup('Prospects');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Prospects').doc(id);

  static Stream<ProspectsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProspectsRecord.fromSnapshot(s));

  static Future<ProspectsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProspectsRecord.fromSnapshot(s));

  static ProspectsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProspectsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProspectsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProspectsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProspectsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProspectsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProspectsRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? loginCount,
  String? pwd,
  bool? twitterConnected,
  String? bio,
  String? username,
  String? userrole,
  DocumentReference? collegeRef,
  bool? isPremium,
  bool? isApproved,
  TwitterDataStruct? twitterData,
  String? createdBy,
  DocumentReference? createdByRef,
  String? highSchoolTranscript,
  String? schoolProfile,
  String? firstName,
  String? lastName,
  bool? onboardingDetailsCompeleted,
  DateTime? lastNotificationRead,
  OnboardingFilesStruct? onboardingDetails,
  String? city,
  String? state,
  String? selfReportedBattingEV,
  String? certifiedBattingEV,
  String? selfReportedCBVeloAverage,
  String? certifiedCBVeloAverage,
  String? selfReportedCBVeloHigh,
  String? certifiedCBVeloHigh,
  String? selfReportedCHVeloAverage,
  String? certifiedCHVeloAverage,
  String? selfReportedCHVeloHigh,
  String? certifiedCHVeloHigh,
  String? selfReportedSLVeloAverage,
  String? certifiedSLVeloAverage,
  String? selfReportedSLVeloHigh,
  String? certifiedSLVeloHigh,
  String? selfReportedFB2SVeloAverage,
  String? certifiedFB2SVeloAverage,
  String? selfReportedFB2SVeloHigh,
  String? certifiedFB2SVeloHigh,
  String? selfReportedFB4SVeloHigh,
  String? certifiedFB4SVeloHigh,
  String? selfReportedFB4SVeloAverage,
  String? certifiedFB4SVeloAverage,
  String? selfReportedTime60,
  String? certifiedTime60,
  String? selfReportedProShuttleTime,
  String? certifiedProShuttleTime,
  String? selfReportedGPA,
  String? certifiedGPA,
  String? bat,
  String? primaryPosition,
  String? secondaryPosition,
  String? secondaryPosition2,
  String? throw1,
  String? heightInches,
  String? heightFeet,
  String? weight,
  String? highSchool,
  String? graduationYear,
  DocumentReference? playerRef,
  DateTime? createdDate,
  DocumentReference? twitterUserDocument,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'login_count': loginCount,
      'pwd': pwd,
      'twitter_connected': twitterConnected,
      'bio': bio,
      'username': username,
      'userrole': userrole,
      'college_ref': collegeRef,
      'isPremium': isPremium,
      'isApproved': isApproved,
      'twitterData': TwitterDataStruct().toMap(),
      'createdBy': createdBy,
      'createdByRef': createdByRef,
      'highSchoolTranscript': highSchoolTranscript,
      'schoolProfile': schoolProfile,
      'firstName': firstName,
      'lastName': lastName,
      'onboardingDetailsCompeleted': onboardingDetailsCompeleted,
      'last_notification_read': lastNotificationRead,
      'onboardingDetails': OnboardingFilesStruct().toMap(),
      'city': city,
      'state': state,
      'selfReportedBattingEV': selfReportedBattingEV,
      'certifiedBattingEV': certifiedBattingEV,
      'selfReportedCBVeloAverage': selfReportedCBVeloAverage,
      'certifiedCBVeloAverage': certifiedCBVeloAverage,
      'selfReportedCBVeloHigh': selfReportedCBVeloHigh,
      'certifiedCBVeloHigh': certifiedCBVeloHigh,
      'selfReportedCHVeloAverage': selfReportedCHVeloAverage,
      'certifiedCHVeloAverage': certifiedCHVeloAverage,
      'selfReportedCHVeloHigh': selfReportedCHVeloHigh,
      'certifiedCHVeloHigh': certifiedCHVeloHigh,
      'selfReportedSLVeloAverage': selfReportedSLVeloAverage,
      'certifiedSLVeloAverage': certifiedSLVeloAverage,
      'selfReportedSLVeloHigh': selfReportedSLVeloHigh,
      'certifiedSLVeloHigh': certifiedSLVeloHigh,
      'selfReportedFB2SVeloAverage': selfReportedFB2SVeloAverage,
      'certifiedFB2SVeloAverage': certifiedFB2SVeloAverage,
      'selfReportedFB2SVeloHigh': selfReportedFB2SVeloHigh,
      'certifiedFB2SVeloHigh': certifiedFB2SVeloHigh,
      'selfReportedFB4SVeloHigh': selfReportedFB4SVeloHigh,
      'certifiedFB4SVeloHigh': certifiedFB4SVeloHigh,
      'selfReportedFB4SVeloAverage': selfReportedFB4SVeloAverage,
      'certifiedFB4SVeloAverage': certifiedFB4SVeloAverage,
      'selfReportedTime60': selfReportedTime60,
      'certifiedTime60': certifiedTime60,
      'selfReportedProShuttleTime': selfReportedProShuttleTime,
      'certifiedProShuttleTime': certifiedProShuttleTime,
      'selfReportedGPA': selfReportedGPA,
      'certifiedGPA': certifiedGPA,
      'bat': bat,
      'primaryPosition': primaryPosition,
      'secondaryPosition': secondaryPosition,
      'secondaryPosition2': secondaryPosition2,
      'throw1': throw1,
      'heightInches': heightInches,
      'heightFeet': heightFeet,
      'weight': weight,
      'highSchool': highSchool,
      'graduationYear': graduationYear,
      'playerRef': playerRef,
      'createdDate': createdDate,
      'twitterUserDocument': twitterUserDocument,
    }.withoutNulls,
  );

  // Handle nested data for "twitterData" field.
  addTwitterDataStructData(firestoreData, twitterData, 'twitterData');

  // Handle nested data for "onboardingDetails" field.
  addOnboardingFilesStructData(
      firestoreData, onboardingDetails, 'onboardingDetails');

  return firestoreData;
}

class ProspectsRecordDocumentEquality implements Equality<ProspectsRecord> {
  const ProspectsRecordDocumentEquality();

  @override
  bool equals(ProspectsRecord? e1, ProspectsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.loginCount == e2?.loginCount &&
        e1?.pwd == e2?.pwd &&
        e1?.twitterConnected == e2?.twitterConnected &&
        e1?.bio == e2?.bio &&
        e1?.username == e2?.username &&
        e1?.userrole == e2?.userrole &&
        listEquality.equals(e1?.threadslist, e2?.threadslist) &&
        listEquality.equals(e1?.favColleges, e2?.favColleges) &&
        e1?.collegeRef == e2?.collegeRef &&
        listEquality.equals(e1?.favPlayers, e2?.favPlayers) &&
        e1?.isPremium == e2?.isPremium &&
        e1?.isApproved == e2?.isApproved &&
        listEquality.equals(e1?.blockedUsersList, e2?.blockedUsersList) &&
        e1?.twitterData == e2?.twitterData &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdByRef == e2?.createdByRef &&
        e1?.highSchoolTranscript == e2?.highSchoolTranscript &&
        e1?.schoolProfile == e2?.schoolProfile &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.onboardingDetailsCompeleted == e2?.onboardingDetailsCompeleted &&
        e1?.lastNotificationRead == e2?.lastNotificationRead &&
        listEquality.equals(e1?.coachProspectList, e2?.coachProspectList) &&
        e1?.onboardingDetails == e2?.onboardingDetails &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.selfReportedBattingEV == e2?.selfReportedBattingEV &&
        e1?.certifiedBattingEV == e2?.certifiedBattingEV &&
        e1?.selfReportedCBVeloAverage == e2?.selfReportedCBVeloAverage &&
        e1?.certifiedCBVeloAverage == e2?.certifiedCBVeloAverage &&
        e1?.selfReportedCBVeloHigh == e2?.selfReportedCBVeloHigh &&
        e1?.certifiedCBVeloHigh == e2?.certifiedCBVeloHigh &&
        e1?.selfReportedCHVeloAverage == e2?.selfReportedCHVeloAverage &&
        e1?.certifiedCHVeloAverage == e2?.certifiedCHVeloAverage &&
        e1?.selfReportedCHVeloHigh == e2?.selfReportedCHVeloHigh &&
        e1?.certifiedCHVeloHigh == e2?.certifiedCHVeloHigh &&
        e1?.selfReportedSLVeloAverage == e2?.selfReportedSLVeloAverage &&
        e1?.certifiedSLVeloAverage == e2?.certifiedSLVeloAverage &&
        e1?.selfReportedSLVeloHigh == e2?.selfReportedSLVeloHigh &&
        e1?.certifiedSLVeloHigh == e2?.certifiedSLVeloHigh &&
        e1?.selfReportedFB2SVeloAverage == e2?.selfReportedFB2SVeloAverage &&
        e1?.certifiedFB2SVeloAverage == e2?.certifiedFB2SVeloAverage &&
        e1?.selfReportedFB2SVeloHigh == e2?.selfReportedFB2SVeloHigh &&
        e1?.certifiedFB2SVeloHigh == e2?.certifiedFB2SVeloHigh &&
        e1?.selfReportedFB4SVeloHigh == e2?.selfReportedFB4SVeloHigh &&
        e1?.certifiedFB4SVeloHigh == e2?.certifiedFB4SVeloHigh &&
        e1?.selfReportedFB4SVeloAverage == e2?.selfReportedFB4SVeloAverage &&
        e1?.certifiedFB4SVeloAverage == e2?.certifiedFB4SVeloAverage &&
        e1?.selfReportedTime60 == e2?.selfReportedTime60 &&
        e1?.certifiedTime60 == e2?.certifiedTime60 &&
        e1?.selfReportedProShuttleTime == e2?.selfReportedProShuttleTime &&
        e1?.certifiedProShuttleTime == e2?.certifiedProShuttleTime &&
        e1?.selfReportedGPA == e2?.selfReportedGPA &&
        e1?.certifiedGPA == e2?.certifiedGPA &&
        e1?.bat == e2?.bat &&
        e1?.primaryPosition == e2?.primaryPosition &&
        e1?.secondaryPosition == e2?.secondaryPosition &&
        e1?.secondaryPosition2 == e2?.secondaryPosition2 &&
        e1?.throw1 == e2?.throw1 &&
        e1?.heightInches == e2?.heightInches &&
        e1?.heightFeet == e2?.heightFeet &&
        e1?.weight == e2?.weight &&
        e1?.highSchool == e2?.highSchool &&
        e1?.graduationYear == e2?.graduationYear &&
        e1?.playerRef == e2?.playerRef &&
        e1?.createdDate == e2?.createdDate &&
        e1?.twitterUserDocument == e2?.twitterUserDocument;
  }

  @override
  int hash(ProspectsRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.loginCount,
        e?.pwd,
        e?.twitterConnected,
        e?.bio,
        e?.username,
        e?.userrole,
        e?.threadslist,
        e?.favColleges,
        e?.collegeRef,
        e?.favPlayers,
        e?.isPremium,
        e?.isApproved,
        e?.blockedUsersList,
        e?.twitterData,
        e?.createdBy,
        e?.createdByRef,
        e?.highSchoolTranscript,
        e?.schoolProfile,
        e?.firstName,
        e?.lastName,
        e?.onboardingDetailsCompeleted,
        e?.lastNotificationRead,
        e?.coachProspectList,
        e?.onboardingDetails,
        e?.city,
        e?.state,
        e?.selfReportedBattingEV,
        e?.certifiedBattingEV,
        e?.selfReportedCBVeloAverage,
        e?.certifiedCBVeloAverage,
        e?.selfReportedCBVeloHigh,
        e?.certifiedCBVeloHigh,
        e?.selfReportedCHVeloAverage,
        e?.certifiedCHVeloAverage,
        e?.selfReportedCHVeloHigh,
        e?.certifiedCHVeloHigh,
        e?.selfReportedSLVeloAverage,
        e?.certifiedSLVeloAverage,
        e?.selfReportedSLVeloHigh,
        e?.certifiedSLVeloHigh,
        e?.selfReportedFB2SVeloAverage,
        e?.certifiedFB2SVeloAverage,
        e?.selfReportedFB2SVeloHigh,
        e?.certifiedFB2SVeloHigh,
        e?.selfReportedFB4SVeloHigh,
        e?.certifiedFB4SVeloHigh,
        e?.selfReportedFB4SVeloAverage,
        e?.certifiedFB4SVeloAverage,
        e?.selfReportedTime60,
        e?.certifiedTime60,
        e?.selfReportedProShuttleTime,
        e?.certifiedProShuttleTime,
        e?.selfReportedGPA,
        e?.certifiedGPA,
        e?.bat,
        e?.primaryPosition,
        e?.secondaryPosition,
        e?.secondaryPosition2,
        e?.throw1,
        e?.heightInches,
        e?.heightFeet,
        e?.weight,
        e?.highSchool,
        e?.graduationYear,
        e?.playerRef,
        e?.createdDate,
        e?.twitterUserDocument
      ]);

  @override
  bool isValidKey(Object? o) => o is ProspectsRecord;
}
