import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookmarksRecord extends FirestoreRecord {
  BookmarksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tweetID" field.
  String? _tweetID;
  String get tweetID => _tweetID ?? '';
  bool hasTweetID() => _tweetID != null;

  // "isHidden" field.
  bool? _isHidden;
  bool get isHidden => _isHidden ?? false;
  bool hasIsHidden() => _isHidden != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _tweetID = snapshotData['tweetID'] as String?;
    _isHidden = snapshotData['isHidden'] as bool?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('bookmarks')
          : FirebaseFirestore.instance.collectionGroup('bookmarks');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('bookmarks').doc(id);

  static Stream<BookmarksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookmarksRecord.fromSnapshot(s));

  static Future<BookmarksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookmarksRecord.fromSnapshot(s));

  static BookmarksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookmarksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookmarksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookmarksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookmarksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookmarksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookmarksRecordData({
  String? tweetID,
  bool? isHidden,
  DateTime? createdDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tweetID': tweetID,
      'isHidden': isHidden,
      'createdDate': createdDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookmarksRecordDocumentEquality implements Equality<BookmarksRecord> {
  const BookmarksRecordDocumentEquality();

  @override
  bool equals(BookmarksRecord? e1, BookmarksRecord? e2) {
    return e1?.tweetID == e2?.tweetID &&
        e1?.isHidden == e2?.isHidden &&
        e1?.createdDate == e2?.createdDate;
  }

  @override
  int hash(BookmarksRecord? e) =>
      const ListEquality().hash([e?.tweetID, e?.isHidden, e?.createdDate]);

  @override
  bool isValidKey(Object? o) => o is BookmarksRecord;
}
