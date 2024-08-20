import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProductsRecord extends FirestoreRecord {
  UserProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "purchaseDate" field.
  DateTime? _purchaseDate;
  DateTime? get purchaseDate => _purchaseDate;
  bool hasPurchaseDate() => _purchaseDate != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "isRefillable" field.
  bool? _isRefillable;
  bool get isRefillable => _isRefillable ?? false;
  bool hasIsRefillable() => _isRefillable != null;

  // "productDescription" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  bool hasProductDescription() => _productDescription != null;

  // "productTitle" field.
  String? _productTitle;
  String get productTitle => _productTitle ?? '';
  bool hasProductTitle() => _productTitle != null;

  // "refillsRemaining" field.
  int? _refillsRemaining;
  int get refillsRemaining => _refillsRemaining ?? 0;
  bool hasRefillsRemaining() => _refillsRemaining != null;

  // "square_id" field.
  String? _squareId;
  String get squareId => _squareId ?? '';
  bool hasSquareId() => _squareId != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "userUploads" field.
  List<String>? _userUploads;
  List<String> get userUploads => _userUploads ?? const [];
  bool hasUserUploads() => _userUploads != null;

  // "paymentId" field.
  List<String>? _paymentId;
  List<String> get paymentId => _paymentId ?? const [];
  bool hasPaymentId() => _paymentId != null;

  // "isCamp" field.
  bool? _isCamp;
  bool get isCamp => _isCamp ?? false;
  bool hasIsCamp() => _isCamp != null;

  // "campReference" field.
  DocumentReference? _campReference;
  DocumentReference? get campReference => _campReference;
  bool hasCampReference() => _campReference != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _purchaseDate = snapshotData['purchaseDate'] as DateTime?;
    _amount = castToType<double>(snapshotData['amount']);
    _isRefillable = snapshotData['isRefillable'] as bool?;
    _productDescription = snapshotData['productDescription'] as String?;
    _productTitle = snapshotData['productTitle'] as String?;
    _refillsRemaining = castToType<int>(snapshotData['refillsRemaining']);
    _squareId = snapshotData['square_id'] as String?;
    _uid = snapshotData['uid'] as String?;
    _userUploads = getDataList(snapshotData['userUploads']);
    _paymentId = getDataList(snapshotData['paymentId']);
    _isCamp = snapshotData['isCamp'] as bool?;
    _campReference = snapshotData['campReference'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userProducts')
          : FirebaseFirestore.instance.collectionGroup('userProducts');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('userProducts').doc(id);

  static Stream<UserProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserProductsRecord.fromSnapshot(s));

  static Future<UserProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserProductsRecord.fromSnapshot(s));

  static UserProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserProductsRecordData({
  DateTime? purchaseDate,
  double? amount,
  bool? isRefillable,
  String? productDescription,
  String? productTitle,
  int? refillsRemaining,
  String? squareId,
  String? uid,
  bool? isCamp,
  DocumentReference? campReference,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'purchaseDate': purchaseDate,
      'amount': amount,
      'isRefillable': isRefillable,
      'productDescription': productDescription,
      'productTitle': productTitle,
      'refillsRemaining': refillsRemaining,
      'square_id': squareId,
      'uid': uid,
      'isCamp': isCamp,
      'campReference': campReference,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserProductsRecordDocumentEquality
    implements Equality<UserProductsRecord> {
  const UserProductsRecordDocumentEquality();

  @override
  bool equals(UserProductsRecord? e1, UserProductsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.purchaseDate == e2?.purchaseDate &&
        e1?.amount == e2?.amount &&
        e1?.isRefillable == e2?.isRefillable &&
        e1?.productDescription == e2?.productDescription &&
        e1?.productTitle == e2?.productTitle &&
        e1?.refillsRemaining == e2?.refillsRemaining &&
        e1?.squareId == e2?.squareId &&
        e1?.uid == e2?.uid &&
        listEquality.equals(e1?.userUploads, e2?.userUploads) &&
        listEquality.equals(e1?.paymentId, e2?.paymentId) &&
        e1?.isCamp == e2?.isCamp &&
        e1?.campReference == e2?.campReference;
  }

  @override
  int hash(UserProductsRecord? e) => const ListEquality().hash([
        e?.purchaseDate,
        e?.amount,
        e?.isRefillable,
        e?.productDescription,
        e?.productTitle,
        e?.refillsRemaining,
        e?.squareId,
        e?.uid,
        e?.userUploads,
        e?.paymentId,
        e?.isCamp,
        e?.campReference
      ]);

  @override
  bool isValidKey(Object? o) => o is UserProductsRecord;
}
