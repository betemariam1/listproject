import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TwitterUserTweetsRecord extends FirestoreRecord {
  TwitterUserTweetsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "userUID" field.
  String? _userUID;
  String get userUID => _userUID ?? '';
  bool hasUserUID() => _userUID != null;

  // "twitterRef" field.
  DocumentReference? _twitterRef;
  DocumentReference? get twitterRef => _twitterRef;
  bool hasTwitterRef() => _twitterRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _userUID = snapshotData['userUID'] as String?;
    _twitterRef = snapshotData['twitterRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('twitterUserTweets')
          : FirebaseFirestore.instance.collectionGroup('twitterUserTweets');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('twitterUserTweets').doc(id);

  static Stream<TwitterUserTweetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TwitterUserTweetsRecord.fromSnapshot(s));

  static Future<TwitterUserTweetsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TwitterUserTweetsRecord.fromSnapshot(s));

  static TwitterUserTweetsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TwitterUserTweetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TwitterUserTweetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TwitterUserTweetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TwitterUserTweetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TwitterUserTweetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTwitterUserTweetsRecordData({
  DateTime? createdAt,
  String? userUID,
  DocumentReference? twitterRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'userUID': userUID,
      'twitterRef': twitterRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class TwitterUserTweetsRecordDocumentEquality
    implements Equality<TwitterUserTweetsRecord> {
  const TwitterUserTweetsRecordDocumentEquality();

  @override
  bool equals(TwitterUserTweetsRecord? e1, TwitterUserTweetsRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.userUID == e2?.userUID &&
        e1?.twitterRef == e2?.twitterRef;
  }

  @override
  int hash(TwitterUserTweetsRecord? e) =>
      const ListEquality().hash([e?.createdAt, e?.userUID, e?.twitterRef]);

  @override
  bool isValidKey(Object? o) => o is TwitterUserTweetsRecord;
}
