import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersPurchasesRecord extends FirestoreRecord {
  UsersPurchasesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "productID" field.
  DocumentReference? _productID;
  DocumentReference? get productID => _productID;
  bool hasProductID() => _productID != null;

  // "purchaseDate" field.
  DateTime? _purchaseDate;
  DateTime? get purchaseDate => _purchaseDate;
  bool hasPurchaseDate() => _purchaseDate != null;

  // "purchaseStatus" field.
  bool? _purchaseStatus;
  bool get purchaseStatus => _purchaseStatus ?? false;
  bool hasPurchaseStatus() => _purchaseStatus != null;

  // "uploadedCSVURL" field.
  String? _uploadedCSVURL;
  String get uploadedCSVURL => _uploadedCSVURL ?? '';
  bool hasUploadedCSVURL() => _uploadedCSVURL != null;

  // "paymentId" field.
  String? _paymentId;
  String get paymentId => _paymentId ?? '';
  bool hasPaymentId() => _paymentId != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _productID = snapshotData['productID'] as DocumentReference?;
    _purchaseDate = snapshotData['purchaseDate'] as DateTime?;
    _purchaseStatus = snapshotData['purchaseStatus'] as bool?;
    _uploadedCSVURL = snapshotData['uploadedCSVURL'] as String?;
    _paymentId = snapshotData['paymentId'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('usersPurchases')
          : FirebaseFirestore.instance.collectionGroup('usersPurchases');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('usersPurchases').doc(id);

  static Stream<UsersPurchasesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersPurchasesRecord.fromSnapshot(s));

  static Future<UsersPurchasesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersPurchasesRecord.fromSnapshot(s));

  static UsersPurchasesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsersPurchasesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersPurchasesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersPurchasesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersPurchasesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersPurchasesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersPurchasesRecordData({
  DocumentReference? productID,
  DateTime? purchaseDate,
  bool? purchaseStatus,
  String? uploadedCSVURL,
  String? paymentId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productID': productID,
      'purchaseDate': purchaseDate,
      'purchaseStatus': purchaseStatus,
      'uploadedCSVURL': uploadedCSVURL,
      'paymentId': paymentId,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersPurchasesRecordDocumentEquality
    implements Equality<UsersPurchasesRecord> {
  const UsersPurchasesRecordDocumentEquality();

  @override
  bool equals(UsersPurchasesRecord? e1, UsersPurchasesRecord? e2) {
    return e1?.productID == e2?.productID &&
        e1?.purchaseDate == e2?.purchaseDate &&
        e1?.purchaseStatus == e2?.purchaseStatus &&
        e1?.uploadedCSVURL == e2?.uploadedCSVURL &&
        e1?.paymentId == e2?.paymentId;
  }

  @override
  int hash(UsersPurchasesRecord? e) => const ListEquality().hash([
        e?.productID,
        e?.purchaseDate,
        e?.purchaseStatus,
        e?.uploadedCSVURL,
        e?.paymentId
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersPurchasesRecord;
}
