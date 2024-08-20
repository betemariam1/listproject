import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsedCouponsRecord extends FirestoreRecord {
  UsedCouponsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "coupons" field.
  DocumentReference? _coupons;
  DocumentReference? get coupons => _coupons;
  bool hasCoupons() => _coupons != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _coupons = snapshotData['coupons'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('usedCoupons')
          : FirebaseFirestore.instance.collectionGroup('usedCoupons');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('usedCoupons').doc(id);

  static Stream<UsedCouponsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsedCouponsRecord.fromSnapshot(s));

  static Future<UsedCouponsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsedCouponsRecord.fromSnapshot(s));

  static UsedCouponsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsedCouponsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsedCouponsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsedCouponsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsedCouponsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsedCouponsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsedCouponsRecordData({
  DateTime? createdDate,
  DocumentReference? coupons,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdDate': createdDate,
      'coupons': coupons,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsedCouponsRecordDocumentEquality implements Equality<UsedCouponsRecord> {
  const UsedCouponsRecordDocumentEquality();

  @override
  bool equals(UsedCouponsRecord? e1, UsedCouponsRecord? e2) {
    return e1?.createdDate == e2?.createdDate && e1?.coupons == e2?.coupons;
  }

  @override
  int hash(UsedCouponsRecord? e) =>
      const ListEquality().hash([e?.createdDate, e?.coupons]);

  @override
  bool isValidKey(Object? o) => o is UsedCouponsRecord;
}
