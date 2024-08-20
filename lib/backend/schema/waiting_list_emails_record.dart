import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WaitingListEmailsRecord extends FirestoreRecord {
  WaitingListEmailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('waitingListEmails')
          : FirebaseFirestore.instance.collectionGroup('waitingListEmails');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('waitingListEmails').doc(id);

  static Stream<WaitingListEmailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WaitingListEmailsRecord.fromSnapshot(s));

  static Future<WaitingListEmailsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => WaitingListEmailsRecord.fromSnapshot(s));

  static WaitingListEmailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WaitingListEmailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WaitingListEmailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WaitingListEmailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WaitingListEmailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WaitingListEmailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWaitingListEmailsRecordData({
  String? email,
  DateTime? createdDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'createdDate': createdDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class WaitingListEmailsRecordDocumentEquality
    implements Equality<WaitingListEmailsRecord> {
  const WaitingListEmailsRecordDocumentEquality();

  @override
  bool equals(WaitingListEmailsRecord? e1, WaitingListEmailsRecord? e2) {
    return e1?.email == e2?.email && e1?.createdDate == e2?.createdDate;
  }

  @override
  int hash(WaitingListEmailsRecord? e) =>
      const ListEquality().hash([e?.email, e?.createdDate]);

  @override
  bool isValidKey(Object? o) => o is WaitingListEmailsRecord;
}
