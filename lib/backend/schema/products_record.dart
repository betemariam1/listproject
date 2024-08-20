import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "productTitle" field.
  String? _productTitle;
  String get productTitle => _productTitle ?? '';
  bool hasProductTitle() => _productTitle != null;

  // "productDescription" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  bool hasProductDescription() => _productDescription != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "productImage" field.
  String? _productImage;
  String get productImage => _productImage ?? '';
  bool hasProductImage() => _productImage != null;

  // "isRefillable" field.
  bool? _isRefillable;
  bool get isRefillable => _isRefillable ?? false;
  bool hasIsRefillable() => _isRefillable != null;

  // "productType" field.
  String? _productType;
  String get productType => _productType ?? '';
  bool hasProductType() => _productType != null;

  // "refillsRemaining" field.
  int? _refillsRemaining;
  int get refillsRemaining => _refillsRemaining ?? 0;
  bool hasRefillsRemaining() => _refillsRemaining != null;

  // "salesTax" field.
  double? _salesTax;
  double get salesTax => _salesTax ?? 0.0;
  bool hasSalesTax() => _salesTax != null;

  // "salesTaxName" field.
  String? _salesTaxName;
  String get salesTaxName => _salesTaxName ?? '';
  bool hasSalesTaxName() => _salesTaxName != null;

  // "salesTaxScope" field.
  String? _salesTaxScope;
  String get salesTaxScope => _salesTaxScope ?? '';
  bool hasSalesTaxScope() => _salesTaxScope != null;

  // "square_id" field.
  String? _squareId;
  String get squareId => _squareId ?? '';
  bool hasSquareId() => _squareId != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "refillAmount" field.
  int? _refillAmount;
  int get refillAmount => _refillAmount ?? 0;
  bool hasRefillAmount() => _refillAmount != null;

  // "hasCamp" field.
  bool? _hasCamp;
  bool get hasCamp => _hasCamp ?? false;
  bool hasHasCamp() => _hasCamp != null;

  // "campReference" field.
  DocumentReference? _campReference;
  DocumentReference? get campReference => _campReference;
  bool hasCampReference() => _campReference != null;

  void _initializeFields() {
    _productTitle = snapshotData['productTitle'] as String?;
    _productDescription = snapshotData['productDescription'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _productImage = snapshotData['productImage'] as String?;
    _isRefillable = snapshotData['isRefillable'] as bool?;
    _productType = snapshotData['productType'] as String?;
    _refillsRemaining = castToType<int>(snapshotData['refillsRemaining']);
    _salesTax = castToType<double>(snapshotData['salesTax']);
    _salesTaxName = snapshotData['salesTaxName'] as String?;
    _salesTaxScope = snapshotData['salesTaxScope'] as String?;
    _squareId = snapshotData['square_id'] as String?;
    _uid = snapshotData['uid'] as String?;
    _refillAmount = castToType<int>(snapshotData['refillAmount']);
    _hasCamp = snapshotData['hasCamp'] as bool?;
    _campReference = snapshotData['campReference'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? productTitle,
  String? productDescription,
  double? amount,
  String? productImage,
  bool? isRefillable,
  String? productType,
  int? refillsRemaining,
  double? salesTax,
  String? salesTaxName,
  String? salesTaxScope,
  String? squareId,
  String? uid,
  int? refillAmount,
  bool? hasCamp,
  DocumentReference? campReference,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productTitle': productTitle,
      'productDescription': productDescription,
      'amount': amount,
      'productImage': productImage,
      'isRefillable': isRefillable,
      'productType': productType,
      'refillsRemaining': refillsRemaining,
      'salesTax': salesTax,
      'salesTaxName': salesTaxName,
      'salesTaxScope': salesTaxScope,
      'square_id': squareId,
      'uid': uid,
      'refillAmount': refillAmount,
      'hasCamp': hasCamp,
      'campReference': campReference,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.productTitle == e2?.productTitle &&
        e1?.productDescription == e2?.productDescription &&
        e1?.amount == e2?.amount &&
        e1?.productImage == e2?.productImage &&
        e1?.isRefillable == e2?.isRefillable &&
        e1?.productType == e2?.productType &&
        e1?.refillsRemaining == e2?.refillsRemaining &&
        e1?.salesTax == e2?.salesTax &&
        e1?.salesTaxName == e2?.salesTaxName &&
        e1?.salesTaxScope == e2?.salesTaxScope &&
        e1?.squareId == e2?.squareId &&
        e1?.uid == e2?.uid &&
        e1?.refillAmount == e2?.refillAmount &&
        e1?.hasCamp == e2?.hasCamp &&
        e1?.campReference == e2?.campReference;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.productTitle,
        e?.productDescription,
        e?.amount,
        e?.productImage,
        e?.isRefillable,
        e?.productType,
        e?.refillsRemaining,
        e?.salesTax,
        e?.salesTaxName,
        e?.salesTaxScope,
        e?.squareId,
        e?.uid,
        e?.refillAmount,
        e?.hasCamp,
        e?.campReference
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
