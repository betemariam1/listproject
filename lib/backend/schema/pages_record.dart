import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagesRecord extends FirestoreRecord {
  PagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "bat" field.
  List<String>? _bat;
  List<String> get bat => _bat ?? const [];
  bool hasBat() => _bat != null;

  // "primary_position" field.
  List<String>? _primaryPosition;
  List<String> get primaryPosition => _primaryPosition ?? const [];
  bool hasPrimaryPosition() => _primaryPosition != null;

  // "secondary_position" field.
  List<String>? _secondaryPosition;
  List<String> get secondaryPosition => _secondaryPosition ?? const [];
  bool hasSecondaryPosition() => _secondaryPosition != null;

  // "secondary_position_2" field.
  List<String>? _secondaryPosition2;
  List<String> get secondaryPosition2 => _secondaryPosition2 ?? const [];
  bool hasSecondaryPosition2() => _secondaryPosition2 != null;

  // "throw1" field.
  List<String>? _throw1;
  List<String> get throw1 => _throw1 ?? const [];
  bool hasThrow1() => _throw1 != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "gpa" field.
  List<double>? _gpa;
  List<double> get gpa => _gpa ?? const [];
  bool hasGpa() => _gpa != null;

  // "high_school" field.
  String? _highSchool;
  String get highSchool => _highSchool ?? '';
  bool hasHighSchool() => _highSchool != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "state" field.
  List<String>? _state;
  List<String> get state => _state ?? const [];
  bool hasState() => _state != null;

  // "weight" field.
  List<double>? _weight;
  List<double> get weight => _weight ?? const [];
  bool hasWeight() => _weight != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "battingEV" field.
  List<String>? _battingEV;
  List<String> get battingEV => _battingEV ?? const [];
  bool hasBattingEV() => _battingEV != null;

  // "cbAverage" field.
  List<String>? _cbAverage;
  List<String> get cbAverage => _cbAverage ?? const [];
  bool hasCbAverage() => _cbAverage != null;

  // "cbHigh" field.
  List<String>? _cbHigh;
  List<String> get cbHigh => _cbHigh ?? const [];
  bool hasCbHigh() => _cbHigh != null;

  // "chAverage" field.
  List<String>? _chAverage;
  List<String> get chAverage => _chAverage ?? const [];
  bool hasChAverage() => _chAverage != null;

  // "chHigh" field.
  List<String>? _chHigh;
  List<String> get chHigh => _chHigh ?? const [];
  bool hasChHigh() => _chHigh != null;

  // "fb2sAverage" field.
  List<String>? _fb2sAverage;
  List<String> get fb2sAverage => _fb2sAverage ?? const [];
  bool hasFb2sAverage() => _fb2sAverage != null;

  // "fb2sHigh" field.
  List<String>? _fb2sHigh;
  List<String> get fb2sHigh => _fb2sHigh ?? const [];
  bool hasFb2sHigh() => _fb2sHigh != null;

  // "fb4sAverage" field.
  List<String>? _fb4sAverage;
  List<String> get fb4sAverage => _fb4sAverage ?? const [];
  bool hasFb4sAverage() => _fb4sAverage != null;

  // "fb4sHigh" field.
  List<String>? _fb4sHigh;
  List<String> get fb4sHigh => _fb4sHigh ?? const [];
  bool hasFb4sHigh() => _fb4sHigh != null;

  // "ofEV" field.
  List<String>? _ofEV;
  List<String> get ofEV => _ofEV ?? const [];
  bool hasOfEV() => _ofEV != null;

  // "slAverage" field.
  List<String>? _slAverage;
  List<String> get slAverage => _slAverage ?? const [];
  bool hasSlAverage() => _slAverage != null;

  // "slHigh" field.
  List<String>? _slHigh;
  List<String> get slHigh => _slHigh ?? const [];
  bool hasSlHigh() => _slHigh != null;

  // "proShuttle" field.
  List<double>? _proShuttle;
  List<double> get proShuttle => _proShuttle ?? const [];
  bool hasProShuttle() => _proShuttle != null;

  // "time60" field.
  List<double>? _time60;
  List<double> get time60 => _time60 ?? const [];
  bool hasTime60() => _time60 != null;

  // "grad_year" field.
  List<String>? _gradYear;
  List<String> get gradYear => _gradYear ?? const [];
  bool hasGradYear() => _gradYear != null;

  // "height_feet" field.
  List<String>? _heightFeet;
  List<String> get heightFeet => _heightFeet ?? const [];
  bool hasHeightFeet() => _heightFeet != null;

  // "height_inches" field.
  List<String>? _heightInches;
  List<String> get heightInches => _heightInches ?? const [];
  bool hasHeightInches() => _heightInches != null;

  // "fields" field.
  List<String>? _fields;
  List<String> get fields => _fields ?? const [];
  bool hasFields() => _fields != null;

  void _initializeFields() {
    _bat = getDataList(snapshotData['bat']);
    _primaryPosition = getDataList(snapshotData['primary_position']);
    _secondaryPosition = getDataList(snapshotData['secondary_position']);
    _secondaryPosition2 = getDataList(snapshotData['secondary_position_2']);
    _throw1 = getDataList(snapshotData['throw1']);
    _city = snapshotData['city'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _gpa = getDataList(snapshotData['gpa']);
    _highSchool = snapshotData['high_school'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _state = getDataList(snapshotData['state']);
    _weight = getDataList(snapshotData['weight']);
    _id = snapshotData['id'] as String?;
    _battingEV = getDataList(snapshotData['battingEV']);
    _cbAverage = getDataList(snapshotData['cbAverage']);
    _cbHigh = getDataList(snapshotData['cbHigh']);
    _chAverage = getDataList(snapshotData['chAverage']);
    _chHigh = getDataList(snapshotData['chHigh']);
    _fb2sAverage = getDataList(snapshotData['fb2sAverage']);
    _fb2sHigh = getDataList(snapshotData['fb2sHigh']);
    _fb4sAverage = getDataList(snapshotData['fb4sAverage']);
    _fb4sHigh = getDataList(snapshotData['fb4sHigh']);
    _ofEV = getDataList(snapshotData['ofEV']);
    _slAverage = getDataList(snapshotData['slAverage']);
    _slHigh = getDataList(snapshotData['slHigh']);
    _proShuttle = getDataList(snapshotData['proShuttle']);
    _time60 = getDataList(snapshotData['time60']);
    _gradYear = getDataList(snapshotData['grad_year']);
    _heightFeet = getDataList(snapshotData['height_feet']);
    _heightInches = getDataList(snapshotData['height_inches']);
    _fields = getDataList(snapshotData['fields']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pages');

  static Stream<PagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PagesRecord.fromSnapshot(s));

  static Future<PagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PagesRecord.fromSnapshot(s));

  static PagesRecord fromSnapshot(DocumentSnapshot snapshot) => PagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPagesRecordData({
  String? city,
  String? firstName,
  String? highSchool,
  String? lastName,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'city': city,
      'first_name': firstName,
      'high_school': highSchool,
      'last_name': lastName,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class PagesRecordDocumentEquality implements Equality<PagesRecord> {
  const PagesRecordDocumentEquality();

  @override
  bool equals(PagesRecord? e1, PagesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.bat, e2?.bat) &&
        listEquality.equals(e1?.primaryPosition, e2?.primaryPosition) &&
        listEquality.equals(e1?.secondaryPosition, e2?.secondaryPosition) &&
        listEquality.equals(e1?.secondaryPosition2, e2?.secondaryPosition2) &&
        listEquality.equals(e1?.throw1, e2?.throw1) &&
        e1?.city == e2?.city &&
        e1?.firstName == e2?.firstName &&
        listEquality.equals(e1?.gpa, e2?.gpa) &&
        e1?.highSchool == e2?.highSchool &&
        e1?.lastName == e2?.lastName &&
        listEquality.equals(e1?.state, e2?.state) &&
        listEquality.equals(e1?.weight, e2?.weight) &&
        e1?.id == e2?.id &&
        listEquality.equals(e1?.battingEV, e2?.battingEV) &&
        listEquality.equals(e1?.cbAverage, e2?.cbAverage) &&
        listEquality.equals(e1?.cbHigh, e2?.cbHigh) &&
        listEquality.equals(e1?.chAverage, e2?.chAverage) &&
        listEquality.equals(e1?.chHigh, e2?.chHigh) &&
        listEquality.equals(e1?.fb2sAverage, e2?.fb2sAverage) &&
        listEquality.equals(e1?.fb2sHigh, e2?.fb2sHigh) &&
        listEquality.equals(e1?.fb4sAverage, e2?.fb4sAverage) &&
        listEquality.equals(e1?.fb4sHigh, e2?.fb4sHigh) &&
        listEquality.equals(e1?.ofEV, e2?.ofEV) &&
        listEquality.equals(e1?.slAverage, e2?.slAverage) &&
        listEquality.equals(e1?.slHigh, e2?.slHigh) &&
        listEquality.equals(e1?.proShuttle, e2?.proShuttle) &&
        listEquality.equals(e1?.time60, e2?.time60) &&
        listEquality.equals(e1?.gradYear, e2?.gradYear) &&
        listEquality.equals(e1?.heightFeet, e2?.heightFeet) &&
        listEquality.equals(e1?.heightInches, e2?.heightInches) &&
        listEquality.equals(e1?.fields, e2?.fields);
  }

  @override
  int hash(PagesRecord? e) => const ListEquality().hash([
        e?.bat,
        e?.primaryPosition,
        e?.secondaryPosition,
        e?.secondaryPosition2,
        e?.throw1,
        e?.city,
        e?.firstName,
        e?.gpa,
        e?.highSchool,
        e?.lastName,
        e?.state,
        e?.weight,
        e?.id,
        e?.battingEV,
        e?.cbAverage,
        e?.cbHigh,
        e?.chAverage,
        e?.chHigh,
        e?.fb2sAverage,
        e?.fb2sHigh,
        e?.fb4sAverage,
        e?.fb4sHigh,
        e?.ofEV,
        e?.slAverage,
        e?.slHigh,
        e?.proShuttle,
        e?.time60,
        e?.gradYear,
        e?.heightFeet,
        e?.heightInches,
        e?.fields
      ]);

  @override
  bool isValidKey(Object? o) => o is PagesRecord;
}
