import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TwitterUserCollegeRecord extends FirestoreRecord {
  TwitterUserCollegeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "collegeRef" field.
  DocumentReference? _collegeRef;
  DocumentReference? get collegeRef => _collegeRef;
  bool hasCollegeRef() => _collegeRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _collegeRef = snapshotData['collegeRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('twitterUserCollege')
          : FirebaseFirestore.instance.collectionGroup('twitterUserCollege');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('twitterUserCollege').doc(id);

  static Stream<TwitterUserCollegeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TwitterUserCollegeRecord.fromSnapshot(s));

  static Future<TwitterUserCollegeRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TwitterUserCollegeRecord.fromSnapshot(s));

  static TwitterUserCollegeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TwitterUserCollegeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TwitterUserCollegeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TwitterUserCollegeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TwitterUserCollegeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TwitterUserCollegeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTwitterUserCollegeRecordData({
  DateTime? createdDate,
  DocumentReference? collegeRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdDate': createdDate,
      'collegeRef': collegeRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class TwitterUserCollegeRecordDocumentEquality
    implements Equality<TwitterUserCollegeRecord> {
  const TwitterUserCollegeRecordDocumentEquality();

  @override
  bool equals(TwitterUserCollegeRecord? e1, TwitterUserCollegeRecord? e2) {
    return e1?.createdDate == e2?.createdDate &&
        e1?.collegeRef == e2?.collegeRef;
  }

  @override
  int hash(TwitterUserCollegeRecord? e) =>
      const ListEquality().hash([e?.createdDate, e?.collegeRef]);

  @override
  bool isValidKey(Object? o) => o is TwitterUserCollegeRecord;
}
