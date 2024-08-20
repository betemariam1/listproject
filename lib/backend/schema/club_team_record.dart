import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClubTeamRecord extends FirestoreRecord {
  ClubTeamRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "State" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "Zip" field.
  String? _zip;
  String get zip => _zip ?? '';
  bool hasZip() => _zip != null;

  // "Phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "CoachsFirstName" field.
  String? _coachsFirstName;
  String get coachsFirstName => _coachsFirstName ?? '';
  bool hasCoachsFirstName() => _coachsFirstName != null;

  // "CoachsLastName" field.
  String? _coachsLastName;
  String get coachsLastName => _coachsLastName ?? '';
  bool hasCoachsLastName() => _coachsLastName != null;

  // "CoachsEmail" field.
  String? _coachsEmail;
  String get coachsEmail => _coachsEmail ?? '';
  bool hasCoachsEmail() => _coachsEmail != null;

  // "CoachsPhone" field.
  String? _coachsPhone;
  String get coachsPhone => _coachsPhone ?? '';
  bool hasCoachsPhone() => _coachsPhone != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _state = snapshotData['State'] as String?;
    _city = snapshotData['City'] as String?;
    _zip = snapshotData['Zip'] as String?;
    _phone = snapshotData['Phone'] as String?;
    _coachsFirstName = snapshotData['CoachsFirstName'] as String?;
    _coachsLastName = snapshotData['CoachsLastName'] as String?;
    _coachsEmail = snapshotData['CoachsEmail'] as String?;
    _coachsPhone = snapshotData['CoachsPhone'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clubTeam');

  static Stream<ClubTeamRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClubTeamRecord.fromSnapshot(s));

  static Future<ClubTeamRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClubTeamRecord.fromSnapshot(s));

  static ClubTeamRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClubTeamRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClubTeamRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClubTeamRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClubTeamRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClubTeamRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClubTeamRecordData({
  String? name,
  String? state,
  String? city,
  String? zip,
  String? phone,
  String? coachsFirstName,
  String? coachsLastName,
  String? coachsEmail,
  String? coachsPhone,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'State': state,
      'City': city,
      'Zip': zip,
      'Phone': phone,
      'CoachsFirstName': coachsFirstName,
      'CoachsLastName': coachsLastName,
      'CoachsEmail': coachsEmail,
      'CoachsPhone': coachsPhone,
      'userRef': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClubTeamRecordDocumentEquality implements Equality<ClubTeamRecord> {
  const ClubTeamRecordDocumentEquality();

  @override
  bool equals(ClubTeamRecord? e1, ClubTeamRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.state == e2?.state &&
        e1?.city == e2?.city &&
        e1?.zip == e2?.zip &&
        e1?.phone == e2?.phone &&
        e1?.coachsFirstName == e2?.coachsFirstName &&
        e1?.coachsLastName == e2?.coachsLastName &&
        e1?.coachsEmail == e2?.coachsEmail &&
        e1?.coachsPhone == e2?.coachsPhone &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(ClubTeamRecord? e) => const ListEquality().hash([
        e?.name,
        e?.state,
        e?.city,
        e?.zip,
        e?.phone,
        e?.coachsFirstName,
        e?.coachsLastName,
        e?.coachsEmail,
        e?.coachsPhone,
        e?.userRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ClubTeamRecord;
}
