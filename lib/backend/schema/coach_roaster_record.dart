import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoachRoasterRecord extends FirestoreRecord {
  CoachRoasterRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('coachRoaster')
          : FirebaseFirestore.instance.collectionGroup('coachRoaster');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('coachRoaster').doc(id);

  static Stream<CoachRoasterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoachRoasterRecord.fromSnapshot(s));

  static Future<CoachRoasterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoachRoasterRecord.fromSnapshot(s));

  static CoachRoasterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoachRoasterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoachRoasterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoachRoasterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoachRoasterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoachRoasterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoachRoasterRecordData({
  DateTime? createdDate,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdDate': createdDate,
      'userRef': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoachRoasterRecordDocumentEquality
    implements Equality<CoachRoasterRecord> {
  const CoachRoasterRecordDocumentEquality();

  @override
  bool equals(CoachRoasterRecord? e1, CoachRoasterRecord? e2) {
    return e1?.createdDate == e2?.createdDate && e1?.userRef == e2?.userRef;
  }

  @override
  int hash(CoachRoasterRecord? e) =>
      const ListEquality().hash([e?.createdDate, e?.userRef]);

  @override
  bool isValidKey(Object? o) => o is CoachRoasterRecord;
}
