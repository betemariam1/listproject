import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CouponsRecord extends FirestoreRecord {
  CouponsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "discountAmount" field.
  double? _discountAmount;
  double get discountAmount => _discountAmount ?? 0.0;
  bool hasDiscountAmount() => _discountAmount != null;

  // "discountScope" field.
  String? _discountScope;
  String get discountScope => _discountScope ?? '';
  bool hasDiscountScope() => _discountScope != null;

  // "discountTitle" field.
  String? _discountTitle;
  String get discountTitle => _discountTitle ?? '';
  bool hasDiscountTitle() => _discountTitle != null;

  // "discountType" field.
  String? _discountType;
  String get discountType => _discountType ?? '';
  bool hasDiscountType() => _discountType != null;

  // "friendlyCode" field.
  String? _friendlyCode;
  String get friendlyCode => _friendlyCode ?? '';
  bool hasFriendlyCode() => _friendlyCode != null;

  // "squareDiscountID" field.
  String? _squareDiscountID;
  String get squareDiscountID => _squareDiscountID ?? '';
  bool hasSquareDiscountID() => _squareDiscountID != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "usageLimit" field.
  int? _usageLimit;
  int get usageLimit => _usageLimit ?? 0;
  bool hasUsageLimit() => _usageLimit != null;

  // "couponType" field.
  String? _couponType;
  String get couponType => _couponType ?? '';
  bool hasCouponType() => _couponType != null;

  // "campReference" field.
  DocumentReference? _campReference;
  DocumentReference? get campReference => _campReference;
  bool hasCampReference() => _campReference != null;

  void _initializeFields() {
    _discountAmount = castToType<double>(snapshotData['discountAmount']);
    _discountScope = snapshotData['discountScope'] as String?;
    _discountTitle = snapshotData['discountTitle'] as String?;
    _discountType = snapshotData['discountType'] as String?;
    _friendlyCode = snapshotData['friendlyCode'] as String?;
    _squareDiscountID = snapshotData['squareDiscountID'] as String?;
    _uid = snapshotData['uid'] as String?;
    _usageLimit = castToType<int>(snapshotData['usageLimit']);
    _couponType = snapshotData['couponType'] as String?;
    _campReference = snapshotData['campReference'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coupons');

  static Stream<CouponsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CouponsRecord.fromSnapshot(s));

  static Future<CouponsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CouponsRecord.fromSnapshot(s));

  static CouponsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CouponsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CouponsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CouponsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CouponsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CouponsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCouponsRecordData({
  double? discountAmount,
  String? discountScope,
  String? discountTitle,
  String? discountType,
  String? friendlyCode,
  String? squareDiscountID,
  String? uid,
  int? usageLimit,
  String? couponType,
  DocumentReference? campReference,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'discountAmount': discountAmount,
      'discountScope': discountScope,
      'discountTitle': discountTitle,
      'discountType': discountType,
      'friendlyCode': friendlyCode,
      'squareDiscountID': squareDiscountID,
      'uid': uid,
      'usageLimit': usageLimit,
      'couponType': couponType,
      'campReference': campReference,
    }.withoutNulls,
  );

  return firestoreData;
}

class CouponsRecordDocumentEquality implements Equality<CouponsRecord> {
  const CouponsRecordDocumentEquality();

  @override
  bool equals(CouponsRecord? e1, CouponsRecord? e2) {
    return e1?.discountAmount == e2?.discountAmount &&
        e1?.discountScope == e2?.discountScope &&
        e1?.discountTitle == e2?.discountTitle &&
        e1?.discountType == e2?.discountType &&
        e1?.friendlyCode == e2?.friendlyCode &&
        e1?.squareDiscountID == e2?.squareDiscountID &&
        e1?.uid == e2?.uid &&
        e1?.usageLimit == e2?.usageLimit &&
        e1?.couponType == e2?.couponType &&
        e1?.campReference == e2?.campReference;
  }

  @override
  int hash(CouponsRecord? e) => const ListEquality().hash([
        e?.discountAmount,
        e?.discountScope,
        e?.discountTitle,
        e?.discountType,
        e?.friendlyCode,
        e?.squareDiscountID,
        e?.uid,
        e?.usageLimit,
        e?.couponType,
        e?.campReference
      ]);

  @override
  bool isValidKey(Object? o) => o is CouponsRecord;
}
