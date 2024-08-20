import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelfReportedMetricsCollectionRecord extends FirestoreRecord {
  SelfReportedMetricsCollectionRecord._(
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

  // "secondaryPosition" field.
  String? _secondaryPosition;
  String get secondaryPosition => _secondaryPosition ?? '';
  bool hasSecondaryPosition() => _secondaryPosition != null;

  // "selfReportedBattingEV" field.
  String? _selfReportedBattingEV;
  String get selfReportedBattingEV => _selfReportedBattingEV ?? '';
  bool hasSelfReportedBattingEV() => _selfReportedBattingEV != null;

  // "selfReportedCBVeloAverage" field.
  String? _selfReportedCBVeloAverage;
  String get selfReportedCBVeloAverage => _selfReportedCBVeloAverage ?? '';
  bool hasSelfReportedCBVeloAverage() => _selfReportedCBVeloAverage != null;

  // "selfReportedCBVeloHigh" field.
  String? _selfReportedCBVeloHigh;
  String get selfReportedCBVeloHigh => _selfReportedCBVeloHigh ?? '';
  bool hasSelfReportedCBVeloHigh() => _selfReportedCBVeloHigh != null;

  // "selfReportedCHVeloAverage" field.
  String? _selfReportedCHVeloAverage;
  String get selfReportedCHVeloAverage => _selfReportedCHVeloAverage ?? '';
  bool hasSelfReportedCHVeloAverage() => _selfReportedCHVeloAverage != null;

  // "selfReportedCHVeloHigh" field.
  String? _selfReportedCHVeloHigh;
  String get selfReportedCHVeloHigh => _selfReportedCHVeloHigh ?? '';
  bool hasSelfReportedCHVeloHigh() => _selfReportedCHVeloHigh != null;

  // "selfReportedFB2SVeloHigh" field.
  String? _selfReportedFB2SVeloHigh;
  String get selfReportedFB2SVeloHigh => _selfReportedFB2SVeloHigh ?? '';
  bool hasSelfReportedFB2SVeloHigh() => _selfReportedFB2SVeloHigh != null;

  // "selfReportedFB4SVeloAverage" field.
  String? _selfReportedFB4SVeloAverage;
  String get selfReportedFB4SVeloAverage => _selfReportedFB4SVeloAverage ?? '';
  bool hasSelfReportedFB4SVeloAverage() => _selfReportedFB4SVeloAverage != null;

  // "selfReportedProShuttleTime" field.
  String? _selfReportedProShuttleTime;
  String get selfReportedProShuttleTime => _selfReportedProShuttleTime ?? '';
  bool hasSelfReportedProShuttleTime() => _selfReportedProShuttleTime != null;

  // "selfReportedFB4SVeloHigh" field.
  String? _selfReportedFB4SVeloHigh;
  String get selfReportedFB4SVeloHigh => _selfReportedFB4SVeloHigh ?? '';
  bool hasSelfReportedFB4SVeloHigh() => _selfReportedFB4SVeloHigh != null;

  // "selfReportedSLVeloAverage" field.
  String? _selfReportedSLVeloAverage;
  String get selfReportedSLVeloAverage => _selfReportedSLVeloAverage ?? '';
  bool hasSelfReportedSLVeloAverage() => _selfReportedSLVeloAverage != null;

  // "selfReportedTime60" field.
  String? _selfReportedTime60;
  String get selfReportedTime60 => _selfReportedTime60 ?? '';
  bool hasSelfReportedTime60() => _selfReportedTime60 != null;

  // "selfReportedSLVeloHigh" field.
  String? _selfReportedSLVeloHigh;
  String get selfReportedSLVeloHigh => _selfReportedSLVeloHigh ?? '';
  bool hasSelfReportedSLVeloHigh() => _selfReportedSLVeloHigh != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "selfReportedGPA" field.
  String? _selfReportedGPA;
  String get selfReportedGPA => _selfReportedGPA ?? '';
  bool hasSelfReportedGPA() => _selfReportedGPA != null;

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

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "selfReportedFB2SVeloAverage" field.
  String? _selfReportedFB2SVeloAverage;
  String get selfReportedFB2SVeloAverage => _selfReportedFB2SVeloAverage ?? '';
  bool hasSelfReportedFB2SVeloAverage() => _selfReportedFB2SVeloAverage != null;

  // "updatedBy" field.
  String? _updatedBy;
  String get updatedBy => _updatedBy ?? '';
  bool hasUpdatedBy() => _updatedBy != null;

  // "selfReportedWeightedGPA" field.
  String? _selfReportedWeightedGPA;
  String get selfReportedWeightedGPA => _selfReportedWeightedGPA ?? '';
  bool hasSelfReportedWeightedGPA() => _selfReportedWeightedGPA != null;

  // "selfReportedUnWeightedGPA" field.
  String? _selfReportedUnWeightedGPA;
  String get selfReportedUnWeightedGPA => _selfReportedUnWeightedGPA ?? '';
  bool hasSelfReportedUnWeightedGPA() => _selfReportedUnWeightedGPA != null;

  // "selfReportedSAT" field.
  SatStruct? _selfReportedSAT;
  SatStruct get selfReportedSAT => _selfReportedSAT ?? SatStruct();
  bool hasSelfReportedSAT() => _selfReportedSAT != null;

  // "selfReportedACT" field.
  ActStruct? _selfReportedACT;
  ActStruct get selfReportedACT => _selfReportedACT ?? ActStruct();
  bool hasSelfReportedACT() => _selfReportedACT != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _bat = snapshotData['bat'] as String?;
    _secondaryPosition2 = snapshotData['secondaryPosition2'] as String?;
    _throw1 = snapshotData['throw1'] as String?;
    _secondaryPosition = snapshotData['secondaryPosition'] as String?;
    _selfReportedBattingEV = snapshotData['selfReportedBattingEV'] as String?;
    _selfReportedCBVeloAverage =
        snapshotData['selfReportedCBVeloAverage'] as String?;
    _selfReportedCBVeloHigh = snapshotData['selfReportedCBVeloHigh'] as String?;
    _selfReportedCHVeloAverage =
        snapshotData['selfReportedCHVeloAverage'] as String?;
    _selfReportedCHVeloHigh = snapshotData['selfReportedCHVeloHigh'] as String?;
    _selfReportedFB2SVeloHigh =
        snapshotData['selfReportedFB2SVeloHigh'] as String?;
    _selfReportedFB4SVeloAverage =
        snapshotData['selfReportedFB4SVeloAverage'] as String?;
    _selfReportedProShuttleTime =
        snapshotData['selfReportedProShuttleTime'] as String?;
    _selfReportedFB4SVeloHigh =
        snapshotData['selfReportedFB4SVeloHigh'] as String?;
    _selfReportedSLVeloAverage =
        snapshotData['selfReportedSLVeloAverage'] as String?;
    _selfReportedTime60 = snapshotData['selfReportedTime60'] as String?;
    _selfReportedSLVeloHigh = snapshotData['selfReportedSLVeloHigh'] as String?;
    _city = snapshotData['city'] as String?;
    _firstName = snapshotData['firstName'] as String?;
    _selfReportedGPA = snapshotData['selfReportedGPA'] as String?;
    _graduationYear = snapshotData['graduationYear'] as String?;
    _heightFeet = snapshotData['heightFeet'] as String?;
    _heightInches = snapshotData['heightInches'] as String?;
    _highSchool = snapshotData['highSchool'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _state = snapshotData['state'] as String?;
    _weight = snapshotData['weight'] as String?;
    _primaryPosition = snapshotData['primaryPosition'] as String?;
    _certified = snapshotData['certified'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _selfReportedFB2SVeloAverage =
        snapshotData['selfReportedFB2SVeloAverage'] as String?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _selfReportedWeightedGPA =
        snapshotData['selfReportedWeightedGPA'] as String?;
    _selfReportedUnWeightedGPA =
        snapshotData['selfReportedUnWeightedGPA'] as String?;
    _selfReportedSAT = SatStruct.maybeFromMap(snapshotData['selfReportedSAT']);
    _selfReportedACT = ActStruct.maybeFromMap(snapshotData['selfReportedACT']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('selfReportedMetricsCollection')
          : FirebaseFirestore.instance
              .collectionGroup('selfReportedMetricsCollection');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('selfReportedMetricsCollection').doc(id);

  static Stream<SelfReportedMetricsCollectionRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => SelfReportedMetricsCollectionRecord.fromSnapshot(s));

  static Future<SelfReportedMetricsCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref
          .get()
          .then((s) => SelfReportedMetricsCollectionRecord.fromSnapshot(s));

  static SelfReportedMetricsCollectionRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      SelfReportedMetricsCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SelfReportedMetricsCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SelfReportedMetricsCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SelfReportedMetricsCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SelfReportedMetricsCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSelfReportedMetricsCollectionRecordData({
  String? bat,
  String? secondaryPosition2,
  String? throw1,
  String? secondaryPosition,
  String? selfReportedBattingEV,
  String? selfReportedCBVeloAverage,
  String? selfReportedCBVeloHigh,
  String? selfReportedCHVeloAverage,
  String? selfReportedCHVeloHigh,
  String? selfReportedFB2SVeloHigh,
  String? selfReportedFB4SVeloAverage,
  String? selfReportedProShuttleTime,
  String? selfReportedFB4SVeloHigh,
  String? selfReportedSLVeloAverage,
  String? selfReportedTime60,
  String? selfReportedSLVeloHigh,
  String? city,
  String? firstName,
  String? selfReportedGPA,
  String? graduationYear,
  String? heightFeet,
  String? heightInches,
  String? highSchool,
  String? lastName,
  String? state,
  String? weight,
  String? primaryPosition,
  String? certified,
  DateTime? date,
  String? selfReportedFB2SVeloAverage,
  String? updatedBy,
  String? selfReportedWeightedGPA,
  String? selfReportedUnWeightedGPA,
  SatStruct? selfReportedSAT,
  ActStruct? selfReportedACT,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bat': bat,
      'secondaryPosition2': secondaryPosition2,
      'throw1': throw1,
      'secondaryPosition': secondaryPosition,
      'selfReportedBattingEV': selfReportedBattingEV,
      'selfReportedCBVeloAverage': selfReportedCBVeloAverage,
      'selfReportedCBVeloHigh': selfReportedCBVeloHigh,
      'selfReportedCHVeloAverage': selfReportedCHVeloAverage,
      'selfReportedCHVeloHigh': selfReportedCHVeloHigh,
      'selfReportedFB2SVeloHigh': selfReportedFB2SVeloHigh,
      'selfReportedFB4SVeloAverage': selfReportedFB4SVeloAverage,
      'selfReportedProShuttleTime': selfReportedProShuttleTime,
      'selfReportedFB4SVeloHigh': selfReportedFB4SVeloHigh,
      'selfReportedSLVeloAverage': selfReportedSLVeloAverage,
      'selfReportedTime60': selfReportedTime60,
      'selfReportedSLVeloHigh': selfReportedSLVeloHigh,
      'city': city,
      'firstName': firstName,
      'selfReportedGPA': selfReportedGPA,
      'graduationYear': graduationYear,
      'heightFeet': heightFeet,
      'heightInches': heightInches,
      'highSchool': highSchool,
      'lastName': lastName,
      'state': state,
      'weight': weight,
      'primaryPosition': primaryPosition,
      'certified': certified,
      'date': date,
      'selfReportedFB2SVeloAverage': selfReportedFB2SVeloAverage,
      'updatedBy': updatedBy,
      'selfReportedWeightedGPA': selfReportedWeightedGPA,
      'selfReportedUnWeightedGPA': selfReportedUnWeightedGPA,
      'selfReportedSAT': SatStruct().toMap(),
      'selfReportedACT': ActStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "selfReportedSAT" field.
  addSatStructData(firestoreData, selfReportedSAT, 'selfReportedSAT');

  // Handle nested data for "selfReportedACT" field.
  addActStructData(firestoreData, selfReportedACT, 'selfReportedACT');

  return firestoreData;
}

class SelfReportedMetricsCollectionRecordDocumentEquality
    implements Equality<SelfReportedMetricsCollectionRecord> {
  const SelfReportedMetricsCollectionRecordDocumentEquality();

  @override
  bool equals(SelfReportedMetricsCollectionRecord? e1,
      SelfReportedMetricsCollectionRecord? e2) {
    return e1?.bat == e2?.bat &&
        e1?.secondaryPosition2 == e2?.secondaryPosition2 &&
        e1?.throw1 == e2?.throw1 &&
        e1?.secondaryPosition == e2?.secondaryPosition &&
        e1?.selfReportedBattingEV == e2?.selfReportedBattingEV &&
        e1?.selfReportedCBVeloAverage == e2?.selfReportedCBVeloAverage &&
        e1?.selfReportedCBVeloHigh == e2?.selfReportedCBVeloHigh &&
        e1?.selfReportedCHVeloAverage == e2?.selfReportedCHVeloAverage &&
        e1?.selfReportedCHVeloHigh == e2?.selfReportedCHVeloHigh &&
        e1?.selfReportedFB2SVeloHigh == e2?.selfReportedFB2SVeloHigh &&
        e1?.selfReportedFB4SVeloAverage == e2?.selfReportedFB4SVeloAverage &&
        e1?.selfReportedProShuttleTime == e2?.selfReportedProShuttleTime &&
        e1?.selfReportedFB4SVeloHigh == e2?.selfReportedFB4SVeloHigh &&
        e1?.selfReportedSLVeloAverage == e2?.selfReportedSLVeloAverage &&
        e1?.selfReportedTime60 == e2?.selfReportedTime60 &&
        e1?.selfReportedSLVeloHigh == e2?.selfReportedSLVeloHigh &&
        e1?.city == e2?.city &&
        e1?.firstName == e2?.firstName &&
        e1?.selfReportedGPA == e2?.selfReportedGPA &&
        e1?.graduationYear == e2?.graduationYear &&
        e1?.heightFeet == e2?.heightFeet &&
        e1?.heightInches == e2?.heightInches &&
        e1?.highSchool == e2?.highSchool &&
        e1?.lastName == e2?.lastName &&
        e1?.state == e2?.state &&
        e1?.weight == e2?.weight &&
        e1?.primaryPosition == e2?.primaryPosition &&
        e1?.certified == e2?.certified &&
        e1?.date == e2?.date &&
        e1?.selfReportedFB2SVeloAverage == e2?.selfReportedFB2SVeloAverage &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.selfReportedWeightedGPA == e2?.selfReportedWeightedGPA &&
        e1?.selfReportedUnWeightedGPA == e2?.selfReportedUnWeightedGPA &&
        e1?.selfReportedSAT == e2?.selfReportedSAT &&
        e1?.selfReportedACT == e2?.selfReportedACT;
  }

  @override
  int hash(SelfReportedMetricsCollectionRecord? e) =>
      const ListEquality().hash([
        e?.bat,
        e?.secondaryPosition2,
        e?.throw1,
        e?.secondaryPosition,
        e?.selfReportedBattingEV,
        e?.selfReportedCBVeloAverage,
        e?.selfReportedCBVeloHigh,
        e?.selfReportedCHVeloAverage,
        e?.selfReportedCHVeloHigh,
        e?.selfReportedFB2SVeloHigh,
        e?.selfReportedFB4SVeloAverage,
        e?.selfReportedProShuttleTime,
        e?.selfReportedFB4SVeloHigh,
        e?.selfReportedSLVeloAverage,
        e?.selfReportedTime60,
        e?.selfReportedSLVeloHigh,
        e?.city,
        e?.firstName,
        e?.selfReportedGPA,
        e?.graduationYear,
        e?.heightFeet,
        e?.heightInches,
        e?.highSchool,
        e?.lastName,
        e?.state,
        e?.weight,
        e?.primaryPosition,
        e?.certified,
        e?.date,
        e?.selfReportedFB2SVeloAverage,
        e?.updatedBy,
        e?.selfReportedWeightedGPA,
        e?.selfReportedUnWeightedGPA,
        e?.selfReportedSAT,
        e?.selfReportedACT
      ]);

  @override
  bool isValidKey(Object? o) => o is SelfReportedMetricsCollectionRecord;
}
