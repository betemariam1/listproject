import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CertifiedMetricsSelfReportedRecord extends FirestoreRecord {
  CertifiedMetricsSelfReportedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "rapsodoPitchingCSV" field.
  List<String>? _rapsodoPitchingCSV;
  List<String> get rapsodoPitchingCSV => _rapsodoPitchingCSV ?? const [];
  bool hasRapsodoPitchingCSV() => _rapsodoPitchingCSV != null;

  // "rapsodoHittingCSV" field.
  List<String>? _rapsodoHittingCSV;
  List<String> get rapsodoHittingCSV => _rapsodoHittingCSV ?? const [];
  bool hasRapsodoHittingCSV() => _rapsodoHittingCSV != null;

  // "hitTraxHittingCSV" field.
  List<String>? _hitTraxHittingCSV;
  List<String> get hitTraxHittingCSV => _hitTraxHittingCSV ?? const [];
  bool hasHitTraxHittingCSV() => _hitTraxHittingCSV != null;

  // "screenShot" field.
  List<String>? _screenShot;
  List<String> get screenShot => _screenShot ?? const [];
  bool hasScreenShot() => _screenShot != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
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
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _rapsodoPitchingCSV = getDataList(snapshotData['rapsodoPitchingCSV']);
    _rapsodoHittingCSV = getDataList(snapshotData['rapsodoHittingCSV']);
    _hitTraxHittingCSV = getDataList(snapshotData['hitTraxHittingCSV']);
    _screenShot = getDataList(snapshotData['screenShot']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('certifiedMetricsSelfReported')
          : FirebaseFirestore.instance
              .collectionGroup('certifiedMetricsSelfReported');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('certifiedMetricsSelfReported').doc(id);

  static Stream<CertifiedMetricsSelfReportedRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => CertifiedMetricsSelfReportedRecord.fromSnapshot(s));

  static Future<CertifiedMetricsSelfReportedRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CertifiedMetricsSelfReportedRecord.fromSnapshot(s));

  static CertifiedMetricsSelfReportedRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      CertifiedMetricsSelfReportedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CertifiedMetricsSelfReportedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CertifiedMetricsSelfReportedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CertifiedMetricsSelfReportedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CertifiedMetricsSelfReportedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCertifiedMetricsSelfReportedRecordData({
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
  DateTime? createdDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
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
      'createdDate': createdDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class CertifiedMetricsSelfReportedRecordDocumentEquality
    implements Equality<CertifiedMetricsSelfReportedRecord> {
  const CertifiedMetricsSelfReportedRecordDocumentEquality();

  @override
  bool equals(CertifiedMetricsSelfReportedRecord? e1,
      CertifiedMetricsSelfReportedRecord? e2) {
    const listEquality = ListEquality();
    return e1?.certifiedBattingEV == e2?.certifiedBattingEV &&
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
        e1?.createdDate == e2?.createdDate &&
        listEquality.equals(e1?.rapsodoPitchingCSV, e2?.rapsodoPitchingCSV) &&
        listEquality.equals(e1?.rapsodoHittingCSV, e2?.rapsodoHittingCSV) &&
        listEquality.equals(e1?.hitTraxHittingCSV, e2?.hitTraxHittingCSV) &&
        listEquality.equals(e1?.screenShot, e2?.screenShot);
  }

  @override
  int hash(CertifiedMetricsSelfReportedRecord? e) => const ListEquality().hash([
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
        e?.createdDate,
        e?.rapsodoPitchingCSV,
        e?.rapsodoHittingCSV,
        e?.hitTraxHittingCSV,
        e?.screenShot
      ]);

  @override
  bool isValidKey(Object? o) => o is CertifiedMetricsSelfReportedRecord;
}
