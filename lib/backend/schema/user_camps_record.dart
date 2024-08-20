import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCampsRecord extends FirestoreRecord {
  UserCampsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "coachRef" field.
  DocumentReference? _coachRef;
  DocumentReference? get coachRef => _coachRef;
  bool hasCoachRef() => _coachRef != null;

  // "isLimited" field.
  bool? _isLimited;
  bool get isLimited => _isLimited ?? false;
  bool hasIsLimited() => _isLimited != null;

  // "eventImage" field.
  String? _eventImage;
  String get eventImage => _eventImage ?? '';
  bool hasEventImage() => _eventImage != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "zipCode" field.
  String? _zipCode;
  String get zipCode => _zipCode ?? '';
  bool hasZipCode() => _zipCode != null;

  // "ageGroup" field.
  String? _ageGroup;
  String get ageGroup => _ageGroup ?? '';
  bool hasAgeGroup() => _ageGroup != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "cost" field.
  double? _cost;
  double get cost => _cost ?? 0.0;
  bool hasCost() => _cost != null;

  // "duration" field.
  double? _duration;
  double get duration => _duration ?? 0.0;
  bool hasDuration() => _duration != null;

  // "createdByRef" field.
  DocumentReference? _createdByRef;
  DocumentReference? get createdByRef => _createdByRef;
  bool hasCreatedByRef() => _createdByRef != null;

  // "teamMembers" field.
  List<DocumentReference>? _teamMembers;
  List<DocumentReference> get teamMembers => _teamMembers ?? const [];
  bool hasTeamMembers() => _teamMembers != null;

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "teamPlayer" field.
  bool? _teamPlayer;
  bool get teamPlayer => _teamPlayer ?? false;
  bool hasTeamPlayer() => _teamPlayer != null;

  // "signedUpPlayer" field.
  bool? _signedUpPlayer;
  bool get signedUpPlayer => _signedUpPlayer ?? false;
  bool hasSignedUpPlayer() => _signedUpPlayer != null;

  // "QRURL" field.
  String? _qrurl;
  String get qrurl => _qrurl ?? '';
  bool hasQrurl() => _qrurl != null;

  // "eventRef" field.
  DocumentReference? _eventRef;
  DocumentReference? get eventRef => _eventRef;
  bool hasEventRef() => _eventRef != null;

  // "isProduct" field.
  bool? _isProduct;
  bool get isProduct => _isProduct ?? false;
  bool hasIsProduct() => _isProduct != null;

  // "CSVURL" field.
  String? _csvurl;
  String get csvurl => _csvurl ?? '';
  bool hasCsvurl() => _csvurl != null;

  // "videoURL" field.
  String? _videoURL;
  String get videoURL => _videoURL ?? '';
  bool hasVideoURL() => _videoURL != null;

  // "underReview" field.
  bool? _underReview;
  bool get underReview => _underReview ?? false;
  bool hasUnderReview() => _underReview != null;

  // "signatureURL" field.
  String? _signatureURL;
  String get signatureURL => _signatureURL ?? '';
  bool hasSignatureURL() => _signatureURL != null;

  // "parentFirstName" field.
  String? _parentFirstName;
  String get parentFirstName => _parentFirstName ?? '';
  bool hasParentFirstName() => _parentFirstName != null;

  // "parentLastName" field.
  String? _parentLastName;
  String get parentLastName => _parentLastName ?? '';
  bool hasParentLastName() => _parentLastName != null;

  // "parentEmail" field.
  String? _parentEmail;
  String get parentEmail => _parentEmail ?? '';
  bool hasParentEmail() => _parentEmail != null;

  // "parentPhoneNumber" field.
  String? _parentPhoneNumber;
  String get parentPhoneNumber => _parentPhoneNumber ?? '';
  bool hasParentPhoneNumber() => _parentPhoneNumber != null;

  // "isResultReady" field.
  bool? _isResultReady;
  bool get isResultReady => _isResultReady ?? false;
  bool hasIsResultReady() => _isResultReady != null;

  // "csvSubmitted" field.
  bool? _csvSubmitted;
  bool get csvSubmitted => _csvSubmitted ?? false;
  bool hasCsvSubmitted() => _csvSubmitted != null;

  // "videoUrls" field.
  List<String>? _videoUrls;
  List<String> get videoUrls => _videoUrls ?? const [];
  bool hasVideoUrls() => _videoUrls != null;

  // "campFields" field.
  List<CampFieldsStruct>? _campFields;
  List<CampFieldsStruct> get campFields => _campFields ?? const [];
  bool hasCampFields() => _campFields != null;

  // "photoURL" field.
  String? _photoURL;
  String get photoURL => _photoURL ?? '';
  bool hasPhotoURL() => _photoURL != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _coachRef = snapshotData['coachRef'] as DocumentReference?;
    _isLimited = snapshotData['isLimited'] as bool?;
    _eventImage = snapshotData['eventImage'] as String?;
    _description = snapshotData['description'] as String?;
    _state = snapshotData['state'] as String?;
    _city = snapshotData['city'] as String?;
    _zipCode = snapshotData['zipCode'] as String?;
    _ageGroup = snapshotData['ageGroup'] as String?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _startTime = snapshotData['startTime'] as DateTime?;
    _address = snapshotData['address'] as String?;
    _cost = castToType<double>(snapshotData['cost']);
    _duration = castToType<double>(snapshotData['duration']);
    _createdByRef = snapshotData['createdByRef'] as DocumentReference?;
    _teamMembers = getDataList(snapshotData['teamMembers']);
    _dateTime = snapshotData['dateTime'] as DateTime?;
    _teamPlayer = snapshotData['teamPlayer'] as bool?;
    _signedUpPlayer = snapshotData['signedUpPlayer'] as bool?;
    _qrurl = snapshotData['QRURL'] as String?;
    _eventRef = snapshotData['eventRef'] as DocumentReference?;
    _isProduct = snapshotData['isProduct'] as bool?;
    _csvurl = snapshotData['CSVURL'] as String?;
    _videoURL = snapshotData['videoURL'] as String?;
    _underReview = snapshotData['underReview'] as bool?;
    _signatureURL = snapshotData['signatureURL'] as String?;
    _parentFirstName = snapshotData['parentFirstName'] as String?;
    _parentLastName = snapshotData['parentLastName'] as String?;
    _parentEmail = snapshotData['parentEmail'] as String?;
    _parentPhoneNumber = snapshotData['parentPhoneNumber'] as String?;
    _isResultReady = snapshotData['isResultReady'] as bool?;
    _csvSubmitted = snapshotData['csvSubmitted'] as bool?;
    _videoUrls = getDataList(snapshotData['videoUrls']);
    _campFields = getStructList(
      snapshotData['campFields'],
      CampFieldsStruct.fromMap,
    );
    _photoURL = snapshotData['photoURL'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userCamps')
          : FirebaseFirestore.instance.collectionGroup('userCamps');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('userCamps').doc(id);

  static Stream<UserCampsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCampsRecord.fromSnapshot(s));

  static Future<UserCampsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserCampsRecord.fromSnapshot(s));

  static UserCampsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCampsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCampsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCampsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCampsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCampsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCampsRecordData({
  String? name,
  DocumentReference? coachRef,
  bool? isLimited,
  String? eventImage,
  String? description,
  String? state,
  String? city,
  String? zipCode,
  String? ageGroup,
  DateTime? endTime,
  DateTime? startTime,
  String? address,
  double? cost,
  double? duration,
  DocumentReference? createdByRef,
  DateTime? dateTime,
  bool? teamPlayer,
  bool? signedUpPlayer,
  String? qrurl,
  DocumentReference? eventRef,
  bool? isProduct,
  String? csvurl,
  String? videoURL,
  bool? underReview,
  String? signatureURL,
  String? parentFirstName,
  String? parentLastName,
  String? parentEmail,
  String? parentPhoneNumber,
  bool? isResultReady,
  bool? csvSubmitted,
  String? photoURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'coachRef': coachRef,
      'isLimited': isLimited,
      'eventImage': eventImage,
      'description': description,
      'state': state,
      'city': city,
      'zipCode': zipCode,
      'ageGroup': ageGroup,
      'endTime': endTime,
      'startTime': startTime,
      'address': address,
      'cost': cost,
      'duration': duration,
      'createdByRef': createdByRef,
      'dateTime': dateTime,
      'teamPlayer': teamPlayer,
      'signedUpPlayer': signedUpPlayer,
      'QRURL': qrurl,
      'eventRef': eventRef,
      'isProduct': isProduct,
      'CSVURL': csvurl,
      'videoURL': videoURL,
      'underReview': underReview,
      'signatureURL': signatureURL,
      'parentFirstName': parentFirstName,
      'parentLastName': parentLastName,
      'parentEmail': parentEmail,
      'parentPhoneNumber': parentPhoneNumber,
      'isResultReady': isResultReady,
      'csvSubmitted': csvSubmitted,
      'photoURL': photoURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCampsRecordDocumentEquality implements Equality<UserCampsRecord> {
  const UserCampsRecordDocumentEquality();

  @override
  bool equals(UserCampsRecord? e1, UserCampsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.coachRef == e2?.coachRef &&
        e1?.isLimited == e2?.isLimited &&
        e1?.eventImage == e2?.eventImage &&
        e1?.description == e2?.description &&
        e1?.state == e2?.state &&
        e1?.city == e2?.city &&
        e1?.zipCode == e2?.zipCode &&
        e1?.ageGroup == e2?.ageGroup &&
        e1?.endTime == e2?.endTime &&
        e1?.startTime == e2?.startTime &&
        e1?.address == e2?.address &&
        e1?.cost == e2?.cost &&
        e1?.duration == e2?.duration &&
        e1?.createdByRef == e2?.createdByRef &&
        listEquality.equals(e1?.teamMembers, e2?.teamMembers) &&
        e1?.dateTime == e2?.dateTime &&
        e1?.teamPlayer == e2?.teamPlayer &&
        e1?.signedUpPlayer == e2?.signedUpPlayer &&
        e1?.qrurl == e2?.qrurl &&
        e1?.eventRef == e2?.eventRef &&
        e1?.isProduct == e2?.isProduct &&
        e1?.csvurl == e2?.csvurl &&
        e1?.videoURL == e2?.videoURL &&
        e1?.underReview == e2?.underReview &&
        e1?.signatureURL == e2?.signatureURL &&
        e1?.parentFirstName == e2?.parentFirstName &&
        e1?.parentLastName == e2?.parentLastName &&
        e1?.parentEmail == e2?.parentEmail &&
        e1?.parentPhoneNumber == e2?.parentPhoneNumber &&
        e1?.isResultReady == e2?.isResultReady &&
        e1?.csvSubmitted == e2?.csvSubmitted &&
        listEquality.equals(e1?.videoUrls, e2?.videoUrls) &&
        listEquality.equals(e1?.campFields, e2?.campFields) &&
        e1?.photoURL == e2?.photoURL;
  }

  @override
  int hash(UserCampsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.coachRef,
        e?.isLimited,
        e?.eventImage,
        e?.description,
        e?.state,
        e?.city,
        e?.zipCode,
        e?.ageGroup,
        e?.endTime,
        e?.startTime,
        e?.address,
        e?.cost,
        e?.duration,
        e?.createdByRef,
        e?.teamMembers,
        e?.dateTime,
        e?.teamPlayer,
        e?.signedUpPlayer,
        e?.qrurl,
        e?.eventRef,
        e?.isProduct,
        e?.csvurl,
        e?.videoURL,
        e?.underReview,
        e?.signatureURL,
        e?.parentFirstName,
        e?.parentLastName,
        e?.parentEmail,
        e?.parentPhoneNumber,
        e?.isResultReady,
        e?.csvSubmitted,
        e?.videoUrls,
        e?.campFields,
        e?.photoURL
      ]);

  @override
  bool isValidKey(Object? o) => o is UserCampsRecord;
}
