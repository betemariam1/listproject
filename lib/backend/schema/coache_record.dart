import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoacheRecord extends FirestoreRecord {
  CoacheRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "coachRef" field.
  String? _coachRef;
  String get coachRef => _coachRef ?? '';
  bool hasCoachRef() => _coachRef != null;

  // "collegeRef" field.
  String? _collegeRef;
  String get collegeRef => _collegeRef ?? '';
  bool hasCollegeRef() => _collegeRef != null;

  // "division" field.
  String? _division;
  String get division => _division ?? '';
  bool hasDivision() => _division != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "first" field.
  String? _first;
  String get first => _first ?? '';
  bool hasFirst() => _first != null;

  // "last" field.
  String? _last;
  String get last => _last ?? '';
  bool hasLast() => _last != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "school" field.
  String? _school;
  String get school => _school ?? '';
  bool hasSchool() => _school != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "teamWebsite" field.
  String? _teamWebsite;
  String get teamWebsite => _teamWebsite ?? '';
  bool hasTeamWebsite() => _teamWebsite != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _coachRef = snapshotData['coachRef'] as String?;
    _collegeRef = snapshotData['collegeRef'] as String?;
    _division = snapshotData['division'] as String?;
    _email = snapshotData['email'] as String?;
    _first = snapshotData['first'] as String?;
    _last = snapshotData['last'] as String?;
    _phone = snapshotData['phone'] as String?;
    _position = snapshotData['position'] as String?;
    _school = snapshotData['school'] as String?;
    _state = snapshotData['state'] as String?;
    _teamWebsite = snapshotData['teamWebsite'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Coache');

  static Stream<CoacheRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoacheRecord.fromSnapshot(s));

  static Future<CoacheRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoacheRecord.fromSnapshot(s));

  static CoacheRecord fromSnapshot(DocumentSnapshot snapshot) => CoacheRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoacheRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoacheRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoacheRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoacheRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoacheRecordData({
  String? coachRef,
  String? collegeRef,
  String? division,
  String? email,
  String? first,
  String? last,
  String? phone,
  String? position,
  String? school,
  String? state,
  String? teamWebsite,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'coachRef': coachRef,
      'collegeRef': collegeRef,
      'division': division,
      'email': email,
      'first': first,
      'last': last,
      'phone': phone,
      'position': position,
      'school': school,
      'state': state,
      'teamWebsite': teamWebsite,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoacheRecordDocumentEquality implements Equality<CoacheRecord> {
  const CoacheRecordDocumentEquality();

  @override
  bool equals(CoacheRecord? e1, CoacheRecord? e2) {
    return e1?.coachRef == e2?.coachRef &&
        e1?.collegeRef == e2?.collegeRef &&
        e1?.division == e2?.division &&
        e1?.email == e2?.email &&
        e1?.first == e2?.first &&
        e1?.last == e2?.last &&
        e1?.phone == e2?.phone &&
        e1?.position == e2?.position &&
        e1?.school == e2?.school &&
        e1?.state == e2?.state &&
        e1?.teamWebsite == e2?.teamWebsite &&
        e1?.type == e2?.type;
  }

  @override
  int hash(CoacheRecord? e) => const ListEquality().hash([
        e?.coachRef,
        e?.collegeRef,
        e?.division,
        e?.email,
        e?.first,
        e?.last,
        e?.phone,
        e?.position,
        e?.school,
        e?.state,
        e?.teamWebsite,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is CoacheRecord;
}
