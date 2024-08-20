import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CertifiedMetricsRecord extends FirestoreRecord {
  CertifiedMetricsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "bat" field.
  String? _bat;
  String get bat => _bat ?? '';
  bool hasBat() => _bat != null;

  // "secondaryPosition2" field.
  String? _secondaryPosition2;
  String get secondaryPosition2 => _secondaryPosition2 ?? '';
  bool hasSecondaryPosition2() => _secondaryPosition2 != null;

  // "throw1" field.
  String? _throw1;
  String get throw1 => _throw1 ?? '';
  bool hasThrow1() => _throw1 != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "graduationYear" field.
  String? _graduationYear;
  String get graduationYear => _graduationYear ?? '';
  bool hasGraduationYear() => _graduationYear != null;

  // "heightFeet" field.
  String? _heightFeet;
  String get heightFeet => _heightFeet ?? '';
  bool hasHeightFeet() => _heightFeet != null;

  // "heightInches" field.
  String? _heightInches;
  String get heightInches => _heightInches ?? '';
  bool hasHeightInches() => _heightInches != null;

  // "highSchool" field.
  String? _highSchool;
  String get highSchool => _highSchool ?? '';
  bool hasHighSchool() => _highSchool != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  bool hasWeight() => _weight != null;

  // "primaryPosition" field.
  String? _primaryPosition;
  String get primaryPosition => _primaryPosition ?? '';
  bool hasPrimaryPosition() => _primaryPosition != null;

  // "certified" field.
  String? _certified;
  String get certified => _certified ?? '';
  bool hasCertified() => _certified != null;

  // "certifiedBattingEV" field.
  String? _certifiedBattingEV;
  String get certifiedBattingEV => _certifiedBattingEV ?? '';
  bool hasCertifiedBattingEV() => _certifiedBattingEV != null;

  // "certifiedCBVeloAverage" field.
  String? _certifiedCBVeloAverage;
  String get certifiedCBVeloAverage => _certifiedCBVeloAverage ?? '';
  bool hasCertifiedCBVeloAverage() => _certifiedCBVeloAverage != null;

  // "certifiedCBVeloHigh" field.
  String? _certifiedCBVeloHigh;
  String get certifiedCBVeloHigh => _certifiedCBVeloHigh ?? '';
  bool hasCertifiedCBVeloHigh() => _certifiedCBVeloHigh != null;

  // "certifiedCHVeloAverage" field.
  String? _certifiedCHVeloAverage;
  String get certifiedCHVeloAverage => _certifiedCHVeloAverage ?? '';
  bool hasCertifiedCHVeloAverage() => _certifiedCHVeloAverage != null;

  // "certifiedCHVeloHigh" field.
  String? _certifiedCHVeloHigh;
  String get certifiedCHVeloHigh => _certifiedCHVeloHigh ?? '';
  bool hasCertifiedCHVeloHigh() => _certifiedCHVeloHigh != null;

  // "certifiedFB2SVeloAverage" field.
  String? _certifiedFB2SVeloAverage;
  String get certifiedFB2SVeloAverage => _certifiedFB2SVeloAverage ?? '';
  bool hasCertifiedFB2SVeloAverage() => _certifiedFB2SVeloAverage != null;

  // "certifiedFB2SVeloHigh" field.
  String? _certifiedFB2SVeloHigh;
  String get certifiedFB2SVeloHigh => _certifiedFB2SVeloHigh ?? '';
  bool hasCertifiedFB2SVeloHigh() => _certifiedFB2SVeloHigh != null;

  // "certifiedFB4SVeloAverage" field.
  String? _certifiedFB4SVeloAverage;
  String get certifiedFB4SVeloAverage => _certifiedFB4SVeloAverage ?? '';
  bool hasCertifiedFB4SVeloAverage() => _certifiedFB4SVeloAverage != null;

  // "certifiedFB4SVeloHigh" field.
  String? _certifiedFB4SVeloHigh;
  String get certifiedFB4SVeloHigh => _certifiedFB4SVeloHigh ?? '';
  bool hasCertifiedFB4SVeloHigh() => _certifiedFB4SVeloHigh != null;

  // "certifiedProShuttleTime" field.
  String? _certifiedProShuttleTime;
  String get certifiedProShuttleTime => _certifiedProShuttleTime ?? '';
  bool hasCertifiedProShuttleTime() => _certifiedProShuttleTime != null;

  // "certifiedSLVeloAverage" field.
  String? _certifiedSLVeloAverage;
  String get certifiedSLVeloAverage => _certifiedSLVeloAverage ?? '';
  bool hasCertifiedSLVeloAverage() => _certifiedSLVeloAverage != null;

  // "certifiedTime60" field.
  String? _certifiedTime60;
  String get certifiedTime60 => _certifiedTime60 ?? '';
  bool hasCertifiedTime60() => _certifiedTime60 != null;

  // "certifiedSLVeloHigh" field.
  String? _certifiedSLVeloHigh;
  String get certifiedSLVeloHigh => _certifiedSLVeloHigh ?? '';
  bool hasCertifiedSLVeloHigh() => _certifiedSLVeloHigh != null;

  // "certifiedGPA" field.
  String? _certifiedGPA;
  String get certifiedGPA => _certifiedGPA ?? '';
  bool hasCertifiedGPA() => _certifiedGPA != null;

  // "updatedBy" field.
  String? _updatedBy;
  String get updatedBy => _updatedBy ?? '';
  bool hasUpdatedBy() => _updatedBy != null;

  // "coachRef" field.
  DocumentReference? _coachRef;
  DocumentReference? get coachRef => _coachRef;
  bool hasCoachRef() => _coachRef != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "campID" field.
  DocumentReference? _campID;
  DocumentReference? get campID => _campID;
  bool hasCampID() => _campID != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _bat = snapshotData['bat'] as String?;
    _secondaryPosition2 = snapshotData['secondaryPosition2'] as String?;
    _throw1 = snapshotData['throw1'] as String?;
    _city = snapshotData['city'] as String?;
    _firstName = snapshotData['firstName'] as String?;
    _graduationYear = snapshotData['graduationYear'] as String?;
    _heightFeet = snapshotData['heightFeet'] as String?;
    _heightInches = snapshotData['heightInches'] as String?;
    _highSchool = snapshotData['highSchool'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _state = snapshotData['state'] as String?;
    _weight = snapshotData['weight'] as String?;
    _primaryPosition = snapshotData['primaryPosition'] as String?;
    _certified = snapshotData['certified'] as String?;
    _certifiedBattingEV = snapshotData['certifiedBattingEV'] as String?;
    _certifiedCBVeloAverage = snapshotData['certifiedCBVeloAverage'] as String?;
    _certifiedCBVeloHigh = snapshotData['certifiedCBVeloHigh'] as String?;
    _certifiedCHVeloAverage = snapshotData['certifiedCHVeloAverage'] as String?;
    _certifiedCHVeloHigh = snapshotData['certifiedCHVeloHigh'] as String?;
    _certifiedFB2SVeloAverage =
        snapshotData['certifiedFB2SVeloAverage'] as String?;
    _certifiedFB2SVeloHigh = snapshotData['certifiedFB2SVeloHigh'] as String?;
    _certifiedFB4SVeloAverage =
        snapshotData['certifiedFB4SVeloAverage'] as String?;
    _certifiedFB4SVeloHigh = snapshotData['certifiedFB4SVeloHigh'] as String?;
    _certifiedProShuttleTime =
        snapshotData['certifiedProShuttleTime'] as String?;
    _certifiedSLVeloAverage = snapshotData['certifiedSLVeloAverage'] as String?;
    _certifiedTime60 = snapshotData['certifiedTime60'] as String?;
    _certifiedSLVeloHigh = snapshotData['certifiedSLVeloHigh'] as String?;
    _certifiedGPA = snapshotData['certifiedGPA'] as String?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _coachRef = snapshotData['coachRef'] as DocumentReference?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _campID = snapshotData['campID'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('certifiedMetrics')
          : FirebaseFirestore.instance.collectionGroup('certifiedMetrics');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('certifiedMetrics').doc(id);

  static Stream<CertifiedMetricsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CertifiedMetricsRecord.fromSnapshot(s));

  static Future<CertifiedMetricsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CertifiedMetricsRecord.fromSnapshot(s));

  static CertifiedMetricsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CertifiedMetricsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CertifiedMetricsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CertifiedMetricsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CertifiedMetricsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CertifiedMetricsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertifiedMetricsRecordData({
  String? bat,
  String? secondaryPosition2,
  String? throw1,
  String? city,
  String? firstName,
  String? graduationYear,
  String? heightFeet,
  String? heightInches,
  String? highSchool,
  String? lastName,
  String? state,
  String? weight,
  String? primaryPosition,
  String? certified,
  String? certifiedBattingEV,
  String? certifiedCBVeloAverage,
  String? certifiedCBVeloHigh,
  String? certifiedCHVeloAverage,
  String? certifiedCHVeloHigh,
  String? certifiedFB2SVeloAverage,
  String? certifiedFB2SVeloHigh,
  String? certifiedFB4SVeloAverage,
  String? certifiedFB4SVeloHigh,
  String? certifiedProShuttleTime,
  String? certifiedSLVeloAverage,
  String? certifiedTime60,
  String? certifiedSLVeloHigh,
  String? certifiedGPA,
  String? updatedBy,
  DocumentReference? coachRef,
  DateTime? createdDate,
  DocumentReference? campID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bat': bat,
      'secondaryPosition2': secondaryPosition2,
      'throw1': throw1,
      'city': city,
      'firstName': firstName,
      'graduationYear': graduationYear,
      'heightFeet': heightFeet,
      'heightInches': heightInches,
      'highSchool': highSchool,
      'lastName': lastName,
      'state': state,
      'weight': weight,
      'primaryPosition': primaryPosition,
      'certified': certified,
      'certifiedBattingEV': certifiedBattingEV,
      'certifiedCBVeloAverage': certifiedCBVeloAverage,
      'certifiedCBVeloHigh': certifiedCBVeloHigh,
      'certifiedCHVeloAverage': certifiedCHVeloAverage,
      'certifiedCHVeloHigh': certifiedCHVeloHigh,
      'certifiedFB2SVeloAverage': certifiedFB2SVeloAverage,
      'certifiedFB2SVeloHigh': certifiedFB2SVeloHigh,
      'certifiedFB4SVeloAverage': certifiedFB4SVeloAverage,
      'certifiedFB4SVeloHigh': certifiedFB4SVeloHigh,
      'certifiedProShuttleTime': certifiedProShuttleTime,
      'certifiedSLVeloAverage': certifiedSLVeloAverage,
      'certifiedTime60': certifiedTime60,
      'certifiedSLVeloHigh': certifiedSLVeloHigh,
      'certifiedGPA': certifiedGPA,
      'updatedBy': updatedBy,
      'coachRef': coachRef,
      'createdDate': createdDate,
      'campID': campID,
    }.withoutNulls,
  );

  return firestoreData;
}

class CertifiedMetricsRecordDocumentEquality
    implements Equality<CertifiedMetricsRecord> {
  const CertifiedMetricsRecordDocumentEquality();

  @override
  bool equals(CertifiedMetricsRecord? e1, CertifiedMetricsRecord? e2) {
    return e1?.bat == e2?.bat &&
        e1?.secondaryPosition2 == e2?.secondaryPosition2 &&
        e1?.throw1 == e2?.throw1 &&
        e1?.city == e2?.city &&
        e1?.firstName == e2?.firstName &&
        e1?.graduationYear == e2?.graduationYear &&
        e1?.heightFeet == e2?.heightFeet &&
        e1?.heightInches == e2?.heightInches &&
        e1?.highSchool == e2?.highSchool &&
        e1?.lastName == e2?.lastName &&
        e1?.state == e2?.state &&
        e1?.weight == e2?.weight &&
        e1?.primaryPosition == e2?.primaryPosition &&
        e1?.certified == e2?.certified &&
        e1?.certifiedBattingEV == e2?.certifiedBattingEV &&
        e1?.certifiedCBVeloAverage == e2?.certifiedCBVeloAverage &&
        e1?.certifiedCBVeloHigh == e2?.certifiedCBVeloHigh &&
        e1?.certifiedCHVeloAverage == e2?.certifiedCHVeloAverage &&
        e1?.certifiedCHVeloHigh == e2?.certifiedCHVeloHigh &&
        e1?.certifiedFB2SVeloAverage == e2?.certifiedFB2SVeloAverage &&
        e1?.certifiedFB2SVeloHigh == e2?.certifiedFB2SVeloHigh &&
        e1?.certifiedFB4SVeloAverage == e2?.certifiedFB4SVeloAverage &&
        e1?.certifiedFB4SVeloHigh == e2?.certifiedFB4SVeloHigh &&
        e1?.certifiedProShuttleTime == e2?.certifiedProShuttleTime &&
        e1?.certifiedSLVeloAverage == e2?.certifiedSLVeloAverage &&
        e1?.certifiedTime60 == e2?.certifiedTime60 &&
        e1?.certifiedSLVeloHigh == e2?.certifiedSLVeloHigh &&
        e1?.certifiedGPA == e2?.certifiedGPA &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.coachRef == e2?.coachRef &&
        e1?.createdDate == e2?.createdDate &&
        e1?.campID == e2?.campID;
  }

  @override
  int hash(CertifiedMetricsRecord? e) => const ListEquality().hash([
        e?.bat,
        e?.secondaryPosition2,
        e?.throw1,
        e?.city,
        e?.firstName,
        e?.graduationYear,
        e?.heightFeet,
        e?.heightInches,
        e?.highSchool,
        e?.lastName,
        e?.state,
        e?.weight,
        e?.primaryPosition,
        e?.certified,
        e?.certifiedBattingEV,
        e?.certifiedCBVeloAverage,
        e?.certifiedCBVeloHigh,
        e?.certifiedCHVeloAverage,
        e?.certifiedCHVeloHigh,
        e?.certifiedFB2SVeloAverage,
        e?.certifiedFB2SVeloHigh,
        e?.certifiedFB4SVeloAverage,
        e?.certifiedFB4SVeloHigh,
        e?.certifiedProShuttleTime,
        e?.certifiedSLVeloAverage,
        e?.certifiedTime60,
        e?.certifiedSLVeloHigh,
        e?.certifiedGPA,
        e?.updatedBy,
        e?.coachRef,
        e?.createdDate,
        e?.campID
      ]);

  @override
  bool isValidKey(Object? o) => o is CertifiedMetricsRecord;
}
