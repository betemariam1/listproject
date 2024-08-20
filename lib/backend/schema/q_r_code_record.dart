import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QRCodeRecord extends FirestoreRecord {
  QRCodeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "campRef" field.
  DocumentReference? _campRef;
  DocumentReference? get campRef => _campRef;
  bool hasCampRef() => _campRef != null;

  // "isScanned" field.
  bool? _isScanned;
  bool get isScanned => _isScanned ?? false;
  bool hasIsScanned() => _isScanned != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  void _initializeFields() {
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _uid = snapshotData['uid'] as String?;
    _campRef = snapshotData['campRef'] as DocumentReference?;
    _isScanned = snapshotData['isScanned'] as bool?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('QRCode');

  static Stream<QRCodeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QRCodeRecord.fromSnapshot(s));

  static Future<QRCodeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QRCodeRecord.fromSnapshot(s));

  static QRCodeRecord fromSnapshot(DocumentSnapshot snapshot) => QRCodeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QRCodeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QRCodeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QRCodeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QRCodeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQRCodeRecordData({
  String? firstName,
  String? lastName,
  String? uid,
  DocumentReference? campRef,
  bool? isScanned,
  DateTime? createdDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'uid': uid,
      'campRef': campRef,
      'isScanned': isScanned,
      'createdDate': createdDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class QRCodeRecordDocumentEquality implements Equality<QRCodeRecord> {
  const QRCodeRecordDocumentEquality();

  @override
  bool equals(QRCodeRecord? e1, QRCodeRecord? e2) {
    return e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.uid == e2?.uid &&
        e1?.campRef == e2?.campRef &&
        e1?.isScanned == e2?.isScanned &&
        e1?.createdDate == e2?.createdDate;
  }

  @override
  int hash(QRCodeRecord? e) => const ListEquality().hash([
        e?.firstName,
        e?.lastName,
        e?.uid,
        e?.campRef,
        e?.isScanned,
        e?.createdDate
      ]);

  @override
  bool isValidKey(Object? o) => o is QRCodeRecord;
}
