import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FollowedByRecord extends FirestoreRecord {
  FollowedByRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('followedBy')
          : FirebaseFirestore.instance.collectionGroup('followedBy');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('followedBy').doc(id);

  static Stream<FollowedByRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FollowedByRecord.fromSnapshot(s));

  static Future<FollowedByRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FollowedByRecord.fromSnapshot(s));

  static FollowedByRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FollowedByRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FollowedByRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FollowedByRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FollowedByRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FollowedByRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFollowedByRecordData({
  DocumentReference? userRef,
  DateTime? createdDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'createdDate': createdDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class FollowedByRecordDocumentEquality implements Equality<FollowedByRecord> {
  const FollowedByRecordDocumentEquality();

  @override
  bool equals(FollowedByRecord? e1, FollowedByRecord? e2) {
    return e1?.userRef == e2?.userRef && e1?.createdDate == e2?.createdDate;
  }

  @override
  int hash(FollowedByRecord? e) =>
      const ListEquality().hash([e?.userRef, e?.createdDate]);

  @override
  bool isValidKey(Object? o) => o is FollowedByRecord;
}
