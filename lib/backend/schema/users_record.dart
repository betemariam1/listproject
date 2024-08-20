import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
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

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

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

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "userrole" field.
  String? _userrole;
  String get userrole => _userrole ?? '';
  bool hasUserrole() => _userrole != null;

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

  // "selfReportedWeightedGPA" field.
  String? _selfReportedWeightedGPA;
  String get selfReportedWeightedGPA => _selfReportedWeightedGPA ?? '';
  bool hasSelfReportedWeightedGPA() => _selfReportedWeightedGPA != null;

  // "selfReportedUnWeightedGPA" field.
  String? _selfReportedUnWeightedGPA;
  String get selfReportedUnWeightedGPA => _selfReportedUnWeightedGPA ?? '';
  bool hasSelfReportedUnWeightedGPA() => _selfReportedUnWeightedGPA != null;

  // "certifiedWeightedGPA" field.
  String? _certifiedWeightedGPA;
  String get certifiedWeightedGPA => _certifiedWeightedGPA ?? '';
  bool hasCertifiedWeightedGPA() => _certifiedWeightedGPA != null;

  // "certifiedUnWeightedGPA" field.
  String? _certifiedUnWeightedGPA;
  String get certifiedUnWeightedGPA => _certifiedUnWeightedGPA ?? '';
  bool hasCertifiedUnWeightedGPA() => _certifiedUnWeightedGPA != null;

  // "certifiedSAT" field.
  SatStruct? _certifiedSAT;
  SatStruct get certifiedSAT => _certifiedSAT ?? SatStruct();
  bool hasCertifiedSAT() => _certifiedSAT != null;

  // "selfReportedSAT" field.
  SatStruct? _selfReportedSAT;
  SatStruct get selfReportedSAT => _selfReportedSAT ?? SatStruct();
  bool hasSelfReportedSAT() => _selfReportedSAT != null;

  // "certifiedACT" field.
  ActStruct? _certifiedACT;
  ActStruct get certifiedACT => _certifiedACT ?? ActStruct();
  bool hasCertifiedACT() => _certifiedACT != null;

  // "selfReportedACT" field.
  ActStruct? _selfReportedACT;
  ActStruct get selfReportedACT => _selfReportedACT ?? ActStruct();
  bool hasSelfReportedACT() => _selfReportedACT != null;

  // "childRef" field.
  DocumentReference? _childRef;
  DocumentReference? get childRef => _childRef;
  bool hasChildRef() => _childRef != null;

  // "verifiedParent" field.
  bool? _verifiedParent;
  bool get verifiedParent => _verifiedParent ?? false;
  bool hasVerifiedParent() => _verifiedParent != null;

  // "parentRef" field.
  DocumentReference? _parentRef;
  DocumentReference? get parentRef => _parentRef;
  bool hasParentRef() => _parentRef != null;

  // "parentAdded" field.
  bool? _parentAdded;
  bool get parentAdded => _parentAdded ?? false;
  bool hasParentAdded() => _parentAdded != null;

  // "playerSelectedSport" field.
  String? _playerSelectedSport;
  String get playerSelectedSport => _playerSelectedSport ?? '';
  bool hasPlayerSelectedSport() => _playerSelectedSport != null;

  // "academicAccomplishments" field.
  List<AcademicAccomplishmentsStruct>? _academicAccomplishments;
  List<AcademicAccomplishmentsStruct> get academicAccomplishments =>
      _academicAccomplishments ?? const [];
  bool hasAcademicAccomplishments() => _academicAccomplishments != null;

  // "athleticHonors" field.
  List<AcademicAccomplishmentsStruct>? _athleticHonors;
  List<AcademicAccomplishmentsStruct> get athleticHonors =>
      _athleticHonors ?? const [];
  bool hasAthleticHonors() => _athleticHonors != null;

  // "socialAccount" field.
  SocialAccountsStruct? _socialAccount;
  SocialAccountsStruct get socialAccount =>
      _socialAccount ?? SocialAccountsStruct();
  bool hasSocialAccount() => _socialAccount != null;

  // "countryCode" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  bool hasCountryCode() => _countryCode != null;

  // "blockedTwitterUsersList" field.
  List<DocumentReference>? _blockedTwitterUsersList;
  List<DocumentReference> get blockedTwitterUsersList =>
      _blockedTwitterUsersList ?? const [];
  bool hasBlockedTwitterUsersList() => _blockedTwitterUsersList != null;

  // "selfReportedFTOnMound" field.
  String? _selfReportedFTOnMound;
  String get selfReportedFTOnMound => _selfReportedFTOnMound ?? '';
  bool hasSelfReportedFTOnMound() => _selfReportedFTOnMound != null;

  // "certifiedFTOnMound" field.
  String? _certifiedFTOnMound;
  String get certifiedFTOnMound => _certifiedFTOnMound ?? '';
  bool hasCertifiedFTOnMound() => _certifiedFTOnMound != null;

  // "selfReportedFTOffMound" field.
  String? _selfReportedFTOffMound;
  String get selfReportedFTOffMound => _selfReportedFTOffMound ?? '';
  bool hasSelfReportedFTOffMound() => _selfReportedFTOffMound != null;

  // "certifiedFTOffMound" field.
  String? _certifiedFTOffMound;
  String get certifiedFTOffMound => _certifiedFTOffMound ?? '';
  bool hasCertifiedFTOffMound() => _certifiedFTOffMound != null;

  // "selfReportedACTTotal" field.
  String? _selfReportedACTTotal;
  String get selfReportedACTTotal => _selfReportedACTTotal ?? '';
  bool hasSelfReportedACTTotal() => _selfReportedACTTotal != null;

  // "certifiedACTTotal" field.
  String? _certifiedACTTotal;
  String get certifiedACTTotal => _certifiedACTTotal ?? '';
  bool hasCertifiedACTTotal() => _certifiedACTTotal != null;

  // "selfReportedSATTotal" field.
  String? _selfReportedSATTotal;
  String get selfReportedSATTotal => _selfReportedSATTotal ?? '';
  bool hasSelfReportedSATTotal() => _selfReportedSATTotal != null;

  // "certifiedSATTotal" field.
  String? _certifiedSATTotal;
  String get certifiedSATTotal => _certifiedSATTotal ?? '';
  bool hasCertifiedSATTotal() => _certifiedSATTotal != null;

  // "isTakingACT" field.
  bool? _isTakingACT;
  bool get isTakingACT => _isTakingACT ?? false;
  bool hasIsTakingACT() => _isTakingACT != null;

  // "isTakingSAT" field.
  bool? _isTakingSAT;
  bool get isTakingSAT => _isTakingSAT ?? false;
  bool hasIsTakingSAT() => _isTakingSAT != null;

  // "has_twitter" field.
  bool? _hasTwitter;
  bool get hasTwitter => _hasTwitter ?? false;
  bool hasHasTwitter() => _hasTwitter != null;

  // "coachTwitterUrl" field.
  String? _coachTwitterUrl;
  String get coachTwitterUrl => _coachTwitterUrl ?? '';
  bool hasCoachTwitterUrl() => _coachTwitterUrl != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "inboxId" field.
  String? _inboxId;
  String get inboxId => _inboxId ?? '';
  bool hasInboxId() => _inboxId != null;

  // "twitterUsername" field.
  String? _twitterUsername;
  String get twitterUsername => _twitterUsername ?? '';
  bool hasTwitterUsername() => _twitterUsername != null;

  // "selfReportedPopTime" field.
  String? _selfReportedPopTime;
  String get selfReportedPopTime => _selfReportedPopTime ?? '';
  bool hasSelfReportedPopTime() => _selfReportedPopTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "selfReportedFB4SVeloTop" field.
  String? _selfReportedFB4SVeloTop;
  String get selfReportedFB4SVeloTop => _selfReportedFB4SVeloTop ?? '';
  bool hasSelfReportedFB4SVeloTop() => _selfReportedFB4SVeloTop != null;

  // "certifiedFB4SVeloTop" field.
  String? _certifiedFB4SVeloTop;
  String get certifiedFB4SVeloTop => _certifiedFB4SVeloTop ?? '';
  bool hasCertifiedFB4SVeloTop() => _certifiedFB4SVeloTop != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _createdDate = snapshotData['created_date'] as DateTime?;
    _loginCount = castToType<int>(snapshotData['login_count']);
    _pwd = snapshotData['pwd'] as String?;
    _twitterConnected = snapshotData['twitter_connected'] as bool?;
    _username = snapshotData['username'] as String?;
    _userrole = snapshotData['userrole'] as String?;
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
    _selfReportedWeightedGPA =
        snapshotData['selfReportedWeightedGPA'] as String?;
    _selfReportedUnWeightedGPA =
        snapshotData['selfReportedUnWeightedGPA'] as String?;
    _certifiedWeightedGPA = snapshotData['certifiedWeightedGPA'] as String?;
    _certifiedUnWeightedGPA = snapshotData['certifiedUnWeightedGPA'] as String?;
    _certifiedSAT = SatStruct.maybeFromMap(snapshotData['certifiedSAT']);
    _selfReportedSAT = SatStruct.maybeFromMap(snapshotData['selfReportedSAT']);
    _certifiedACT = ActStruct.maybeFromMap(snapshotData['certifiedACT']);
    _selfReportedACT = ActStruct.maybeFromMap(snapshotData['selfReportedACT']);
    _childRef = snapshotData['childRef'] as DocumentReference?;
    _verifiedParent = snapshotData['verifiedParent'] as bool?;
    _parentRef = snapshotData['parentRef'] as DocumentReference?;
    _parentAdded = snapshotData['parentAdded'] as bool?;
    _playerSelectedSport = snapshotData['playerSelectedSport'] as String?;
    _academicAccomplishments = getStructList(
      snapshotData['academicAccomplishments'],
      AcademicAccomplishmentsStruct.fromMap,
    );
    _athleticHonors = getStructList(
      snapshotData['athleticHonors'],
      AcademicAccomplishmentsStruct.fromMap,
    );
    _socialAccount =
        SocialAccountsStruct.maybeFromMap(snapshotData['socialAccount']);
    _countryCode = snapshotData['countryCode'] as String?;
    _blockedTwitterUsersList =
        getDataList(snapshotData['blockedTwitterUsersList']);
    _selfReportedFTOnMound = snapshotData['selfReportedFTOnMound'] as String?;
    _certifiedFTOnMound = snapshotData['certifiedFTOnMound'] as String?;
    _selfReportedFTOffMound = snapshotData['selfReportedFTOffMound'] as String?;
    _certifiedFTOffMound = snapshotData['certifiedFTOffMound'] as String?;
    _selfReportedACTTotal = snapshotData['selfReportedACTTotal'] as String?;
    _certifiedACTTotal = snapshotData['certifiedACTTotal'] as String?;
    _selfReportedSATTotal = snapshotData['selfReportedSATTotal'] as String?;
    _certifiedSATTotal = snapshotData['certifiedSATTotal'] as String?;
    _isTakingACT = snapshotData['isTakingACT'] as bool?;
    _isTakingSAT = snapshotData['isTakingSAT'] as bool?;
    _hasTwitter = snapshotData['has_twitter'] as bool?;
    _coachTwitterUrl = snapshotData['coachTwitterUrl'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
    _inboxId = snapshotData['inboxId'] as String?;
    _twitterUsername = snapshotData['twitterUsername'] as String?;
    _selfReportedPopTime = snapshotData['selfReportedPopTime'] as String?;
    _bio = snapshotData['bio'] as String?;
    _selfReportedFB4SVeloTop =
        snapshotData['selfReportedFB4SVeloTop'] as String?;
    _certifiedFB4SVeloTop = snapshotData['certifiedFB4SVeloTop'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  static UsersRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      UsersRecord.getDocumentFromData(
        {
          'email': snapshot.data['email'],
          'display_name': snapshot.data['display_name'],
          'photo_url': snapshot.data['photo_url'],
          'uid': snapshot.data['uid'],
          'created_time': convertAlgoliaParam(
            snapshot.data['created_time'],
            ParamType.DateTime,
            false,
          ),
          'phone_number': snapshot.data['phone_number'],
          'created_date': convertAlgoliaParam(
            snapshot.data['created_date'],
            ParamType.DateTime,
            false,
          ),
          'login_count': convertAlgoliaParam(
            snapshot.data['login_count'],
            ParamType.int,
            false,
          ),
          'pwd': snapshot.data['pwd'],
          'twitter_connected': snapshot.data['twitter_connected'],
          'username': snapshot.data['username'],
          'userrole': snapshot.data['userrole'],
          'fav_colleges': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['fav_colleges'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'college_ref': convertAlgoliaParam(
            snapshot.data['college_ref'],
            ParamType.DocumentReference,
            false,
          ),
          'fav_players': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['fav_players'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'isPremium': snapshot.data['isPremium'],
          'isApproved': snapshot.data['isApproved'],
          'blockedUsersList': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['blockedUsersList'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'twitterData': TwitterDataStruct.fromAlgoliaData(
                  snapshot.data['twitterData'] ?? {})
              .toMap(),
          'createdBy': snapshot.data['createdBy'],
          'createdByRef': convertAlgoliaParam(
            snapshot.data['createdByRef'],
            ParamType.DocumentReference,
            false,
          ),
          'highSchoolTranscript': snapshot.data['highSchoolTranscript'],
          'schoolProfile': snapshot.data['schoolProfile'],
          'firstName': snapshot.data['firstName'],
          'lastName': snapshot.data['lastName'],
          'onboardingDetailsCompeleted':
              snapshot.data['onboardingDetailsCompeleted'],
          'last_notification_read': convertAlgoliaParam(
            snapshot.data['last_notification_read'],
            ParamType.DateTime,
            false,
          ),
          'coachProspectList': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['coachProspectList'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'onboardingDetails': OnboardingFilesStruct.fromAlgoliaData(
                  snapshot.data['onboardingDetails'] ?? {})
              .toMap(),
          'city': snapshot.data['city'],
          'state': snapshot.data['state'],
          'selfReportedBattingEV': snapshot.data['selfReportedBattingEV'],
          'certifiedBattingEV': snapshot.data['certifiedBattingEV'],
          'selfReportedCBVeloAverage':
              snapshot.data['selfReportedCBVeloAverage'],
          'certifiedCBVeloAverage': snapshot.data['certifiedCBVeloAverage'],
          'selfReportedCBVeloHigh': snapshot.data['selfReportedCBVeloHigh'],
          'certifiedCBVeloHigh': snapshot.data['certifiedCBVeloHigh'],
          'selfReportedCHVeloAverage':
              snapshot.data['selfReportedCHVeloAverage'],
          'certifiedCHVeloAverage': snapshot.data['certifiedCHVeloAverage'],
          'selfReportedCHVeloHigh': snapshot.data['selfReportedCHVeloHigh'],
          'certifiedCHVeloHigh': snapshot.data['certifiedCHVeloHigh'],
          'selfReportedSLVeloAverage':
              snapshot.data['selfReportedSLVeloAverage'],
          'certifiedSLVeloAverage': snapshot.data['certifiedSLVeloAverage'],
          'selfReportedSLVeloHigh': snapshot.data['selfReportedSLVeloHigh'],
          'certifiedSLVeloHigh': snapshot.data['certifiedSLVeloHigh'],
          'selfReportedFB2SVeloAverage':
              snapshot.data['selfReportedFB2SVeloAverage'],
          'certifiedFB2SVeloAverage': snapshot.data['certifiedFB2SVeloAverage'],
          'selfReportedFB2SVeloHigh': snapshot.data['selfReportedFB2SVeloHigh'],
          'certifiedFB2SVeloHigh': snapshot.data['certifiedFB2SVeloHigh'],
          'selfReportedFB4SVeloHigh': snapshot.data['selfReportedFB4SVeloHigh'],
          'certifiedFB4SVeloHigh': snapshot.data['certifiedFB4SVeloHigh'],
          'selfReportedFB4SVeloAverage':
              snapshot.data['selfReportedFB4SVeloAverage'],
          'certifiedFB4SVeloAverage': snapshot.data['certifiedFB4SVeloAverage'],
          'selfReportedTime60': snapshot.data['selfReportedTime60'],
          'certifiedTime60': snapshot.data['certifiedTime60'],
          'selfReportedProShuttleTime':
              snapshot.data['selfReportedProShuttleTime'],
          'certifiedProShuttleTime': snapshot.data['certifiedProShuttleTime'],
          'selfReportedGPA': snapshot.data['selfReportedGPA'],
          'certifiedGPA': snapshot.data['certifiedGPA'],
          'bat': snapshot.data['bat'],
          'primaryPosition': snapshot.data['primaryPosition'],
          'secondaryPosition': snapshot.data['secondaryPosition'],
          'secondaryPosition2': snapshot.data['secondaryPosition2'],
          'throw1': snapshot.data['throw1'],
          'heightInches': snapshot.data['heightInches'],
          'heightFeet': snapshot.data['heightFeet'],
          'weight': snapshot.data['weight'],
          'highSchool': snapshot.data['highSchool'],
          'graduationYear': snapshot.data['graduationYear'],
          'selfReportedWeightedGPA': snapshot.data['selfReportedWeightedGPA'],
          'selfReportedUnWeightedGPA':
              snapshot.data['selfReportedUnWeightedGPA'],
          'certifiedWeightedGPA': snapshot.data['certifiedWeightedGPA'],
          'certifiedUnWeightedGPA': snapshot.data['certifiedUnWeightedGPA'],
          'certifiedSAT':
              SatStruct.fromAlgoliaData(snapshot.data['certifiedSAT'] ?? {})
                  .toMap(),
          'selfReportedSAT':
              SatStruct.fromAlgoliaData(snapshot.data['selfReportedSAT'] ?? {})
                  .toMap(),
          'certifiedACT':
              ActStruct.fromAlgoliaData(snapshot.data['certifiedACT'] ?? {})
                  .toMap(),
          'selfReportedACT':
              ActStruct.fromAlgoliaData(snapshot.data['selfReportedACT'] ?? {})
                  .toMap(),
          'childRef': convertAlgoliaParam(
            snapshot.data['childRef'],
            ParamType.DocumentReference,
            false,
          ),
          'verifiedParent': snapshot.data['verifiedParent'],
          'parentRef': convertAlgoliaParam(
            snapshot.data['parentRef'],
            ParamType.DocumentReference,
            false,
          ),
          'parentAdded': snapshot.data['parentAdded'],
          'playerSelectedSport': snapshot.data['playerSelectedSport'],
          'academicAccomplishments': safeGet(
            () => (snapshot.data['academicAccomplishments'] as Iterable)
                .map((d) =>
                    AcademicAccomplishmentsStruct.fromAlgoliaData(d).toMap())
                .toList(),
          ),
          'athleticHonors': safeGet(
            () => (snapshot.data['athleticHonors'] as Iterable)
                .map((d) =>
                    AcademicAccomplishmentsStruct.fromAlgoliaData(d).toMap())
                .toList(),
          ),
          'socialAccount': SocialAccountsStruct.fromAlgoliaData(
                  snapshot.data['socialAccount'] ?? {})
              .toMap(),
          'countryCode': snapshot.data['countryCode'],
          'blockedTwitterUsersList': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['blockedTwitterUsersList'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'selfReportedFTOnMound': snapshot.data['selfReportedFTOnMound'],
          'certifiedFTOnMound': snapshot.data['certifiedFTOnMound'],
          'selfReportedFTOffMound': snapshot.data['selfReportedFTOffMound'],
          'certifiedFTOffMound': snapshot.data['certifiedFTOffMound'],
          'selfReportedACTTotal': snapshot.data['selfReportedACTTotal'],
          'certifiedACTTotal': snapshot.data['certifiedACTTotal'],
          'selfReportedSATTotal': snapshot.data['selfReportedSATTotal'],
          'certifiedSATTotal': snapshot.data['certifiedSATTotal'],
          'isTakingACT': snapshot.data['isTakingACT'],
          'isTakingSAT': snapshot.data['isTakingSAT'],
          'has_twitter': snapshot.data['has_twitter'],
          'coachTwitterUrl': snapshot.data['coachTwitterUrl'],
          'shortDescription': snapshot.data['shortDescription'],
          'last_active_time': convertAlgoliaParam(
            snapshot.data['last_active_time'],
            ParamType.DateTime,
            false,
          ),
          'role': snapshot.data['role'],
          'title': snapshot.data['title'],
          'inboxId': snapshot.data['inboxId'],
          'twitterUsername': snapshot.data['twitterUsername'],
          'selfReportedPopTime': snapshot.data['selfReportedPopTime'],
          'bio': snapshot.data['bio'],
          'selfReportedFB4SVeloTop': snapshot.data['selfReportedFB4SVeloTop'],
          'certifiedFB4SVeloTop': snapshot.data['certifiedFB4SVeloTop'],
        },
        UsersRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<UsersRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'users',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? createdDate,
  int? loginCount,
  String? pwd,
  bool? twitterConnected,
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
  String? selfReportedWeightedGPA,
  String? selfReportedUnWeightedGPA,
  String? certifiedWeightedGPA,
  String? certifiedUnWeightedGPA,
  SatStruct? certifiedSAT,
  SatStruct? selfReportedSAT,
  ActStruct? certifiedACT,
  ActStruct? selfReportedACT,
  DocumentReference? childRef,
  bool? verifiedParent,
  DocumentReference? parentRef,
  bool? parentAdded,
  String? playerSelectedSport,
  SocialAccountsStruct? socialAccount,
  String? countryCode,
  String? selfReportedFTOnMound,
  String? certifiedFTOnMound,
  String? selfReportedFTOffMound,
  String? certifiedFTOffMound,
  String? selfReportedACTTotal,
  String? certifiedACTTotal,
  String? selfReportedSATTotal,
  String? certifiedSATTotal,
  bool? isTakingACT,
  bool? isTakingSAT,
  bool? hasTwitter,
  String? coachTwitterUrl,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
  String? inboxId,
  String? twitterUsername,
  String? selfReportedPopTime,
  String? bio,
  String? selfReportedFB4SVeloTop,
  String? certifiedFB4SVeloTop,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'created_date': createdDate,
      'login_count': loginCount,
      'pwd': pwd,
      'twitter_connected': twitterConnected,
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
      'selfReportedWeightedGPA': selfReportedWeightedGPA,
      'selfReportedUnWeightedGPA': selfReportedUnWeightedGPA,
      'certifiedWeightedGPA': certifiedWeightedGPA,
      'certifiedUnWeightedGPA': certifiedUnWeightedGPA,
      'certifiedSAT': SatStruct().toMap(),
      'selfReportedSAT': SatStruct().toMap(),
      'certifiedACT': ActStruct().toMap(),
      'selfReportedACT': ActStruct().toMap(),
      'childRef': childRef,
      'verifiedParent': verifiedParent,
      'parentRef': parentRef,
      'parentAdded': parentAdded,
      'playerSelectedSport': playerSelectedSport,
      'socialAccount': SocialAccountsStruct().toMap(),
      'countryCode': countryCode,
      'selfReportedFTOnMound': selfReportedFTOnMound,
      'certifiedFTOnMound': certifiedFTOnMound,
      'selfReportedFTOffMound': selfReportedFTOffMound,
      'certifiedFTOffMound': certifiedFTOffMound,
      'selfReportedACTTotal': selfReportedACTTotal,
      'certifiedACTTotal': certifiedACTTotal,
      'selfReportedSATTotal': selfReportedSATTotal,
      'certifiedSATTotal': certifiedSATTotal,
      'isTakingACT': isTakingACT,
      'isTakingSAT': isTakingSAT,
      'has_twitter': hasTwitter,
      'coachTwitterUrl': coachTwitterUrl,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
      'inboxId': inboxId,
      'twitterUsername': twitterUsername,
      'selfReportedPopTime': selfReportedPopTime,
      'bio': bio,
      'selfReportedFB4SVeloTop': selfReportedFB4SVeloTop,
      'certifiedFB4SVeloTop': certifiedFB4SVeloTop,
    }.withoutNulls,
  );

  // Handle nested data for "twitterData" field.
  addTwitterDataStructData(firestoreData, twitterData, 'twitterData');

  // Handle nested data for "onboardingDetails" field.
  addOnboardingFilesStructData(
      firestoreData, onboardingDetails, 'onboardingDetails');

  // Handle nested data for "certifiedSAT" field.
  addSatStructData(firestoreData, certifiedSAT, 'certifiedSAT');

  // Handle nested data for "selfReportedSAT" field.
  addSatStructData(firestoreData, selfReportedSAT, 'selfReportedSAT');

  // Handle nested data for "certifiedACT" field.
  addActStructData(firestoreData, certifiedACT, 'certifiedACT');

  // Handle nested data for "selfReportedACT" field.
  addActStructData(firestoreData, selfReportedACT, 'selfReportedACT');

  // Handle nested data for "socialAccount" field.
  addSocialAccountsStructData(firestoreData, socialAccount, 'socialAccount');

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.createdDate == e2?.createdDate &&
        e1?.loginCount == e2?.loginCount &&
        e1?.pwd == e2?.pwd &&
        e1?.twitterConnected == e2?.twitterConnected &&
        e1?.username == e2?.username &&
        e1?.userrole == e2?.userrole &&
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
        e1?.selfReportedWeightedGPA == e2?.selfReportedWeightedGPA &&
        e1?.selfReportedUnWeightedGPA == e2?.selfReportedUnWeightedGPA &&
        e1?.certifiedWeightedGPA == e2?.certifiedWeightedGPA &&
        e1?.certifiedUnWeightedGPA == e2?.certifiedUnWeightedGPA &&
        e1?.certifiedSAT == e2?.certifiedSAT &&
        e1?.selfReportedSAT == e2?.selfReportedSAT &&
        e1?.certifiedACT == e2?.certifiedACT &&
        e1?.selfReportedACT == e2?.selfReportedACT &&
        e1?.childRef == e2?.childRef &&
        e1?.verifiedParent == e2?.verifiedParent &&
        e1?.parentRef == e2?.parentRef &&
        e1?.parentAdded == e2?.parentAdded &&
        e1?.playerSelectedSport == e2?.playerSelectedSport &&
        listEquality.equals(
            e1?.academicAccomplishments, e2?.academicAccomplishments) &&
        listEquality.equals(e1?.athleticHonors, e2?.athleticHonors) &&
        e1?.socialAccount == e2?.socialAccount &&
        e1?.countryCode == e2?.countryCode &&
        listEquality.equals(
            e1?.blockedTwitterUsersList, e2?.blockedTwitterUsersList) &&
        e1?.selfReportedFTOnMound == e2?.selfReportedFTOnMound &&
        e1?.certifiedFTOnMound == e2?.certifiedFTOnMound &&
        e1?.selfReportedFTOffMound == e2?.selfReportedFTOffMound &&
        e1?.certifiedFTOffMound == e2?.certifiedFTOffMound &&
        e1?.selfReportedACTTotal == e2?.selfReportedACTTotal &&
        e1?.certifiedACTTotal == e2?.certifiedACTTotal &&
        e1?.selfReportedSATTotal == e2?.selfReportedSATTotal &&
        e1?.certifiedSATTotal == e2?.certifiedSATTotal &&
        e1?.isTakingACT == e2?.isTakingACT &&
        e1?.isTakingSAT == e2?.isTakingSAT &&
        e1?.hasTwitter == e2?.hasTwitter &&
        e1?.coachTwitterUrl == e2?.coachTwitterUrl &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title &&
        e1?.inboxId == e2?.inboxId &&
        e1?.twitterUsername == e2?.twitterUsername &&
        e1?.selfReportedPopTime == e2?.selfReportedPopTime &&
        e1?.bio == e2?.bio &&
        e1?.selfReportedFB4SVeloTop == e2?.selfReportedFB4SVeloTop &&
        e1?.certifiedFB4SVeloTop == e2?.certifiedFB4SVeloTop;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.createdDate,
        e?.loginCount,
        e?.pwd,
        e?.twitterConnected,
        e?.username,
        e?.userrole,
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
        e?.selfReportedWeightedGPA,
        e?.selfReportedUnWeightedGPA,
        e?.certifiedWeightedGPA,
        e?.certifiedUnWeightedGPA,
        e?.certifiedSAT,
        e?.selfReportedSAT,
        e?.certifiedACT,
        e?.selfReportedACT,
        e?.childRef,
        e?.verifiedParent,
        e?.parentRef,
        e?.parentAdded,
        e?.playerSelectedSport,
        e?.academicAccomplishments,
        e?.athleticHonors,
        e?.socialAccount,
        e?.countryCode,
        e?.blockedTwitterUsersList,
        e?.selfReportedFTOnMound,
        e?.certifiedFTOnMound,
        e?.selfReportedFTOffMound,
        e?.certifiedFTOffMound,
        e?.selfReportedACTTotal,
        e?.certifiedACTTotal,
        e?.selfReportedSATTotal,
        e?.certifiedSATTotal,
        e?.isTakingACT,
        e?.isTakingSAT,
        e?.hasTwitter,
        e?.coachTwitterUrl,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title,
        e?.inboxId,
        e?.twitterUsername,
        e?.selfReportedPopTime,
        e?.bio,
        e?.selfReportedFB4SVeloTop,
        e?.certifiedFB4SVeloTop
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
