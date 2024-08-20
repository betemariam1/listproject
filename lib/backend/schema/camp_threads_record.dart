import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CampThreadsRecord extends FirestoreRecord {
  CampThreadsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "threadRef" field.
  DocumentReference? _threadRef;
  DocumentReference? get threadRef => _threadRef;
  bool hasThreadRef() => _threadRef != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _threadRef = snapshotData['threadRef'] as DocumentReference?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('campThreads')
          : FirebaseFirestore.instance.collectionGroup('campThreads');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('campThreads').doc(id);

  static Stream<CampThreadsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CampThreadsRecord.fromSnapshot(s));

  static Future<CampThreadsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CampThreadsRecord.fromSnapshot(s));

  static CampThreadsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CampThreadsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CampThreadsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CampThreadsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CampThreadsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CampThreadsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCampThreadsRecordData({
  DocumentReference? threadRef,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'threadRef': threadRef,
      'createdTime': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class CampThreadsRecordDocumentEquality implements Equality<CampThreadsRecord> {
  const CampThreadsRecordDocumentEquality();

  @override
  bool equals(CampThreadsRecord? e1, CampThreadsRecord? e2) {
    return e1?.threadRef == e2?.threadRef && e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(CampThreadsRecord? e) =>
      const ListEquality().hash([e?.threadRef, e?.createdTime]);

  @override
  bool isValidKey(Object? o) => o is CampThreadsRecord;
}
