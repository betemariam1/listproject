import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromotionsRecord extends FirestoreRecord {
  PromotionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "descriptions" field.
  String? _descriptions;
  String get descriptions => _descriptions ?? '';
  bool hasDescriptions() => _descriptions != null;

  // "promotionImages" field.
  String? _promotionImages;
  String get promotionImages => _promotionImages ?? '';
  bool hasPromotionImages() => _promotionImages != null;

  // "campID" field.
  DocumentReference? _campID;
  DocumentReference? get campID => _campID;
  bool hasCampID() => _campID != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "promotionUrl" field.
  String? _promotionUrl;
  String get promotionUrl => _promotionUrl ?? '';
  bool hasPromotionUrl() => _promotionUrl != null;

  // "actionURL" field.
  String? _actionURL;
  String get actionURL => _actionURL ?? '';
  bool hasActionURL() => _actionURL != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _descriptions = snapshotData['descriptions'] as String?;
    _promotionImages = snapshotData['promotionImages'] as String?;
    _campID = snapshotData['campID'] as DocumentReference?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _promotionUrl = snapshotData['promotionUrl'] as String?;
    _actionURL = snapshotData['actionURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('promotions');

  static Stream<PromotionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromotionsRecord.fromSnapshot(s));

  static Future<PromotionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromotionsRecord.fromSnapshot(s));

  static PromotionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromotionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromotionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromotionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromotionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromotionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromotionsRecordData({
  String? title,
  String? descriptions,
  String? promotionImages,
  DocumentReference? campID,
  DateTime? createdDate,
  String? promotionUrl,
  String? actionURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'descriptions': descriptions,
      'promotionImages': promotionImages,
      'campID': campID,
      'createdDate': createdDate,
      'promotionUrl': promotionUrl,
      'actionURL': actionURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromotionsRecordDocumentEquality implements Equality<PromotionsRecord> {
  const PromotionsRecordDocumentEquality();

  @override
  bool equals(PromotionsRecord? e1, PromotionsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.descriptions == e2?.descriptions &&
        e1?.promotionImages == e2?.promotionImages &&
        e1?.campID == e2?.campID &&
        e1?.createdDate == e2?.createdDate &&
        e1?.promotionUrl == e2?.promotionUrl &&
        e1?.actionURL == e2?.actionURL;
  }

  @override
  int hash(PromotionsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.descriptions,
        e?.promotionImages,
        e?.campID,
        e?.createdDate,
        e?.promotionUrl,
        e?.actionURL
      ]);

  @override
  bool isValidKey(Object? o) => o is PromotionsRecord;
}
